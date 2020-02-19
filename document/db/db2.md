# 2차 DB 설계

* **PRINT**

  ```sql
  create table PRINT (
    id serial primary key,
    print_date TIMESTAMP
  );
  ```

  * insert

    ```sql
    insert into PRINT values
    (DEFAULT, now());
    ```

    

