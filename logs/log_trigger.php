<?php

    require_once('../conn.php');

    $sql = "
        CREATE TABLE IF NOT EXISTS log_table (
            log_id INT AUTO_INCREMENT PRIMARY KEY,
            table_name VARCHAR(255),
            action_type VARCHAR(10),
            record_id INT,
            timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
        );
        
        DELIMITER //
        CREATE TRIGGER after_insert_your_table
        AFTER INSERT ON your_table
        FOR EACH ROW
        BEGIN
            INSERT INTO log_table (table_name, action_type, record_id)
            VALUES ('your_table', 'INSERT', NEW.id);
        END;
        //
        
        DELIMITER //
        CREATE TRIGGER after_update_your_table
        AFTER UPDATE ON your_table
        FOR EACH ROW
        BEGIN
            INSERT INTO log_table (table_name, action_type, record_id)
            VALUES ('your_table', 'UPDATE', NEW.id);
        END;
        //
        
        DELIMITER //
        CREATE TRIGGER after_delete_your_table
        AFTER DELETE ON your_table
        FOR EACH ROW
        BEGIN
            INSERT INTO log_table (table_name, action_type, record_id)
            VALUES ('your_table', 'DELETE', OLD.id);
        END;
        //
        DELIMITER ;
    ";

    if(mysqli_multi_query($conn, $sql)) 
    { 
        do {
            mysqli_store_result($conn);
        }
        while (mysqli_more_results($conn) && mysqli_next_result($conn));
    }
    else
    {
        echo mysqli_error($conn);
    }

?>
