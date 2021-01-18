<h2>ID: UС_001</h2>
      
***НАЗВА: Сценарій створення облікового запису користувача***
    
***УЧАСНИКИ: Сервіс, Користувач***

***ПЕРЕДУМОВИ:***

***РЕЗУЛЬТАТ: Створення працездатного облікового запису***

***ВИКЛЮЧНІ СИТУАЦІЇ:***  
EX_001 Такий аккаунт вже існує  
EX_002 Пароль не підходить під задані вимоги
EX_003 Некоректний email

***ОСНОВНИЙ СЦЕНАРІЙ:***
![Image alt](https://github.com/MaxiskaSN/database_basics_template/blob/master/src/uml/UC_00.png)

<h2>ID: UС_002</h2>

***НАЗВА: Сценарій вхідоду до облікового запису користувача***
    
***УЧАСНИКИ: Сервіс, Користувач***

***ПЕРЕДУМОВИ:***

***РЕЗУЛЬТАТ: Вхід до облікового запису***

***ВИКЛЮЧНІ СИТУАЦІЇ:***  
EX_001 Користувача с таким логіном не існує
EX_002 Пароль некоректний

***ОСНОВНИЙ СЦЕНАРІЙ:***
![Image alt](https://github.com/MaxiskaSN/database_basics_template/blob/master/src/uml/UC_01.png)

<h2>ID: UС_003</h2>

***НАЗВА: Сценарій створення тікета до СП***
    
***УЧАСНИКИ: Сервіс, Користувач***

***ПЕРЕДУМОВИ:***

***РЕЗУЛЬТАТ: Створений тікет звернення до СП***

***ВИКЛЮЧНІ СИТУАЦІЇ:***  

***ОСНОВНИЙ СЦЕНАРІЙ:***
![Image alt](https://github.com/MaxiskaSN/database_basics_template/blob/master/src/uml/UC_02.png)


<h2>ID: UС_004</h2>

***НАЗВА: Сценарій видалення облікового запису користувача***
    
***УЧАСНИКИ: ПрацівникСП, Користувач, Адміністратор***

***ПЕРЕДУМОВИ:***

***РЕЗУЛЬТАТ: Створений тікет звернення до СП***

***ВИКЛЮЧНІ СИТУАЦІЇ:*** 
EX_001 Відмова в видаленні облікового запису

***ОСНОВНИЙ СЦЕНАРІЙ:***
![uml](http://www.plantuml.com/plantuml/png/TP0nIWD168NxESLSGD3MGj9u1piH32feXBZsEWlQkK522X4MRp0EIHXsdJt3zsxaZDM2IVVpUBpt_M_oK5tCgyUxMyC7Wvw8UfPJJS3hzU24DcjUBreHI4GwlcZjiUMzMEaP2FHwqzBoZMUBBsSWiiRJ4-M85az7XrTDaZExOtFTWZK_MKrQ_O4KbojWfR9bauLD2HxLaKXgBDr_VdmftfEesipkgwcTtrnTLpdzau5j0IOmsDEpyyCZivydi-uOh50knf-Ebb2ZfLnsDsOodLtcpNy1)

<h2>ID: UС_005</h2>

***НАЗВА: Відновлення паролю до облікового запису користувача***
    
***УЧАСНИКИ: Система, Користувач***

***ПЕРЕДУМОВИ:***

***РЕЗУЛЬТАТ: Відновлений пароль до облікового запису***

***ВИКЛЮЧНІ СИТУАЦІЇ:*** 
EX_001 Аккаунту з таким логіном не існує
EX_002 Пароль не підходить під задані вимоги

***ОСНОВНИЙ СЦЕНАРІЙ:***
![uml](http://www.plantuml.com/plantuml/png/dL9DIiDW5Dpd5Dy517NfGhhn3kwaODH2Mw76VTluioaLIgaWYdY3a3OQ-pN95URTo7dzDX4ZV9H2USoRpCoRf7KJjGVHRQyRu0Mb397BICOI8qKYZtl7-708CcoGc2E3Dox62cBDQMvG4ETSe4I5jSG6gIomKe0g5XcdGfuCAlA71ArCWz-wz6bmLxSPSagfZznj6HiQ4B4gcF9NOgM8vR2aRI6nzoKpzpXoqYOrYQ1_7OLcqBcyYiXw9Vp9PQviSt9wjd_WdtvRHCLLGf2PjQ-At17bB47NZBl7fpVNDjVi7bygGA5lKjJTy2_3qiLGJtcGXJoRiDVk-B_VTsIg8_VrRfZvR_3fhasx2ncyVjl4rTuDBvfRF_HlNG4apaPRa_c_dgsmVywl_mS0)

<h2>ID: UС_006</h2>

***НАЗВА: Перегляд статистики розвитку України***
    
***УЧАСНИКИ: Система, Користувач***

***ПЕРЕДУМОВИ:***

***РЕЗУЛЬТАТ: Перегляд статистики розвитку України***

***ВИКЛЮЧНІ СИТУАЦІЇ:*** 
EX_001 Не має зв'язку з БД

***ОСНОВНИЙ СЦЕНАРІЙ:***
![uml](http://www.plantuml.com/plantuml/png/bP51IiDW48NtESLSGD2j2-d6ExWJmQA2LgXnhqPm8qYbL10LnGlysaH_qYPUuPiR-NwB2wsBkWbv7s_UcqawH_bMFpy-sC-ufVKJef_wcHUy4lnYQOsd6Q5YIh1LuvuWAKYjjw7HYFD1fU6ACHE_ehGqysrCJvcZoT7ohkWeL7jXF5CB1h-X8MO_orJ-nqffXKTQNeY2bwQye7O9ewGr1Woptc7UjVxUpcukzvtSRqo82cXjVMDpUMNXfWT9OQPUf5DB0WsDZspXX854EPiUVvrwxYFgVnnxJKoz2fZ_fbvOGh-YZNe-oekiq-rjwqz_0W00)

<h2>ID: UС_007</h2>

***НАЗВА: Залишити коментар***
    
***УЧАСНИКИ: Система, Користувач***

***ПЕРЕДУМОВИ: Зареєстрований аккаунт***

***РЕЗУЛЬТАТ: Коментування***

***ВИКЛЮЧНІ СИТУАЦІЇ:*** 
EX_001 Ви не війшли в аккаунт

***ОСНОВНИЙ СЦЕНАРІЙ:***
![uml](http://www.plantuml.com/plantuml/png/ZP0nYi9058RxdE9TO66ttM99itUm4y6WWaQ8OnyDeeMbA8WWtc0KeqDYvWp_kv4_iH9IM4mn__lu_iSB9wQJcEbe660FhocSpdIk6Iwmklpwm-cL8CS3Ldu5H-IQyYtWSOKZl1RI5HpkKgFKw9P10ISVQtUmA1ck26m41JmdEIeoLjCW7fj8aa6lRyWUEBo1D7LU_bljxv_WtSY6XjvwVNxEABbWeLbJKnZ5NTxZ2G00)

