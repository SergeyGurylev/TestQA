#language: ru
@ExportScenarios
@IgnoreOnCIMainBuild
@tree

Функционал: Практические задания к Модулю 2

2. Создайте экспортный сценарий на заполнение шапки документа Заказ.
Используя экспортный сценарий, создайте тест на проверку расчета поля Количество (итог) документа Заказ.

Сценарий: заполнение шапки документа Заказ

И из выпадающего списка с именем "Организация" я выбираю точное значение 'ООО "1000 мелочей"'
И из выпадающего списка с именем "Покупатель" я выбираю точное значение 'Покупатель по розничной цене'
И из выпадающего списка с именем "Склад" я выбираю точное значение 'Большой'