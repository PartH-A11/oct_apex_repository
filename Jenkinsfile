pipeline {
    agent any

    parameters {
        string(name: 'USER_APEX_APP_ID', defaultValue: '12345', description: 'Enter the user-specific APEX Application ID')
    }

    environment {
        APEX_WORKSPACE = "APEX_PIPELINE"
        APEX_USERNAME = "parth.suthar"
        DB_HOST = "13.203.90.85"
        DB_SERVICE = "osprod.OSPROD"
        APEX_APPLICATION_ID = "${params.USER_APEX_APP_ID}"
        SQLCL_PATH = "/u01/sqlcl/sqlcl/bin/sql"
    }

    stages {
        stage('Checkout Code') {
            steps {
                git branch: 'develop', url: 'https://github.com/PartH-A11/oct_apex_repository'
            }
        }

        stage('Retrieve Credentials') {
            steps {
                script {
                    withCredentials([
                        usernamePassword(credentialsId: 'DB_PASSWORD', usernameVariable: 'DB_USER', passwordVariable: 'DB_PASSWORD')
                    ]) {
                        env.DB_CONN = "${DB_USER}/${DB_PASSWORD}@${DB_HOST}:1521/${DB_SERVICE}"
                    }
                }
            }
        }

        stage('Export APEX Application Dynamically') {
            steps {
                script {
                    def exportFile = "apex_export_${APEX_APPLICATION_ID}.sql"
                    
                    // Export APEX app using SQLcl
                    def exportStatus = sh(script: """
                        echo "Exporting APEX application ${APEX_APPLICATION_ID}..."
                        ${SQLCL_PATH} -s ${DB_CONN} <<EOF
                        SET HEADING OFF
                        SET FEEDBACK OFF
                        SET PAGESIZE 0
                        SET SERVEROUTPUT ON
                        EXEC DBMS_APPLICATION_EXPORT.EXPORT_APPLICATION(${APEX_APPLICATION_ID}, 'FILE', '${exportFile}');
                        EXIT;
                        EOF
                    """, returnStatus: true)

                    if (exportStatus != 0) {
                        error "APEX application export failed!"
                    }

                    echo "APEX Application exported to: ${exportFile}"
                }
            }
        }

        stage('Upload APEX Application Dynamically') {
            steps {
                script {
                    def importStatus = sh(script: """
                        echo "Importing APEX application ${APEX_APPLICATION_ID} into workspace ${APEX_WORKSPACE}..."
                        ${SQLCL_PATH} -s ${DB_CONN} <<EOF
                        BEGIN
                            APEX_APPLICATION_INSTALL.SET_WORKSPACE('${APEX_WORKSPACE}');
                            APEX_APPLICATION_INSTALL.SET_SCHEMA('APEX_SCHEMA_NAME');
                            APEX_APPLICATION_INSTALL.SET_APPLICATION_ID(${APEX_APPLICATION_ID});
                            APEX_APPLICATION_INSTALL.SET_APPLICATION_ALIAS('APP_ALIAS_${APEX_APPLICATION_ID}');
                        END;
                        /
                        @apex_export_${APEX_APPLICATION_ID}.sql
                        EXIT;
                        EOF
                    """, returnStatus: true)

                    if (importStatus != 0) {
                        error "APEX application upload failed!"
                    }
                }
            }
        }

        stage('Notify') {
            steps {
                echo "Deployment successful! APEX Application is live on: https://bkp2.octalsoft.com/apex/r/apex/workspace-sign-in"
            }
        }
    }
}
