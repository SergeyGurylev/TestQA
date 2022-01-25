﻿#language: ru
@ExportScenarios
@IgnoreOnCIMainBuild
@tree

Функционал: Практические задания к Модулю 2

2. Создайте экспортный сценарий на заполнение шапки документа Заказ.
Используя экспортный сценарий, создайте тест на проверку расчета поля Количество (итог) документа Заказ.

Сценарий: проверка расчета поля Количество (итог) документа Заказ

И я удаляю все строки таблицы "Товары"
И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '10'
И в таблице "Товары" я завершаю редактирование строки
И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '5'
И я перехожу к следующему реквизиту
И в таблице "Товары" я завершаю редактирование строки
И я запоминаю значение поля "Вид цен" как "ВидЦеныПокупателя"
Тогда значение поля "Количество (итог)" содержит текст "15"
