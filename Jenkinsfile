pipeline {
    agent any

    environment {
        APEX_WORKSPACE = "CORRECT_WORKSPACE_NAME" // Ensure this is the correct workspace
        APEX_USERNAME = "parth.suthar"
        DB_HOST = "13.203.90.85"
        DB_SERVICE = "osprod.OSPROD"
    }

    stages {
        stage('Checkout Code') {
            steps {
                git branch: 'develop', url: 'https://github.com/PartH-A11/oct_apex_repository'
                fingerprint 'f2341.sql'
            }
        }
        
        stage('Retrieve Credentials') {
            steps {
                script {
                    withCredentials([
                        usernamePassword(credentialsId: 'DBpassword', usernameVariable: 'DB_USER', passwordVariable: 'DB_PASSWORD')
                    ]) {
                        env.DB_CONN = "${DB_USER}/${DB_PASSWORD}@${DB_HOST}:1521/${DB_SERVICE}"
                    }
                }
            }
        }

        stage('Set Correct Workspace') {
            steps {
                script {
                    def sqlclPath = "/u01/sqlcl/sqlcl/bin/sql"
                    def switchWorkspace = """
                    DECLARE
                        v_workspace_id NUMBER;
                    BEGIN
                        SELECT workspace_id INTO v_workspace_id 
                        FROM apex_workspaces 
                        WHERE workspace = '${APEX_WORKSPACE}';

                        apex_util.set_workspace('${APEX_WORKSPACE}');
                        apex_application_install.set_workspace_id(v_workspace_id);
                    END;
                    /
                    """
                    sh(script: "echo \"${switchWorkspace}\" | \"${sqlclPath}\" -s \"${DB_CONN}\"")
                }
            }
        }

        stage('Validate SQL Files') {
            steps {
                script {
                    def sqlclPath = "/u01/sqlcl/sqlcl/bin/sql"
                    def result = sh(script: "\"${sqlclPath}\" -s \"${DB_CONN}\" @f2341.sql", returnStatus: true)
                    if (result != 0) {
                        error "SQL validation failed! Check script for errors."
                    }
                }
            }
        }

        stage('Handle Duplicate Entries') {
            steps {
                script {
                    def sqlclPath = "/u01/sqlcl/sqlcl/bin/sql"
                    def handleDuplicates = """
                    DECLARE
                        v_list_id NUMBER;
                    BEGIN
                        -- Check if the list already exists
                        SELECT list_id INTO v_list_id
                        FROM apex_application_lists
                        WHERE application_id = &APP_ID.
                        AND name = 'Data Load Wizard Progress - KIT_AUTO_TEMP_INSERT';

                        -- If it exists, do not create it again
                        IF v_list_id IS NOT NULL THEN
                            DBMS_OUTPUT.PUT_LINE('List already exists. Skipping creation.');
                        END IF;
                    EXCEPTION
                        -- If no record is found, create the list
                        WHEN NO_DATA_FOUND THEN
                            wwv_flow_imp_shared.create_list(
                                p_id=>wwv_flow_imp.id(4267013831774190895),
                                p_name=>'Data Load Wizard Progress - KIT_AUTO_TEMP_INSERT',
                                p_list_status=>'PUBLIC',
                                p_version_scn=>1
                            );
                    END;
                    /
                    """
                    sh(script: "echo \"${handleDuplicates}\" | \"${sqlclPath}\" -s \"${DB_CONN}\"")
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
