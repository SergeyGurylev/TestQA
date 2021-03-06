#language: ru

@ExportScenarios
@IgnoreOnCIMainBuild
@tree

Функционал: Финальные практические задания

	Проверка заполнения документа РасходТовара

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Проверяю заполнения документа РасходТовара в рублях с услугой
	
	Дано Я открываю навигационную ссылку "e1cib/list/Документ.РасходТовара"
		
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Продажа товара (создание)'
	
* проверка заполнения шапки с валютой
	И из выпадающего списка с именем "Организация" я выбираю точное значение 'ООО "1000 мелочей"'
	И элемент формы "Валюта взиморасчетов" отсутствует на форме
	И из выпадающего списка с именем "Покупатель" я выбираю по строке 'Животноводство ООО '
	И элемент формы с именем 'ВидЦен' стал равен 'Оптовая'
	И из выпадающего списка с именем "Склад" я выбираю точное значение 'Малый'
	
* проверка заполнения табличной части
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице 'Товары' я активизирую поле с именем 'ТоварыТовар'
	И в таблице "Товары" из выпадающего списка с именем "ТоварыТовар" я выбираю по строке 'Доставка'
	//И В таблице "Товары" поле с именем "ТоварыКоличество" доступно только для просмотра

	Когда Проверяю шаги на Исключение:
		| И в таблице "Товары" я активизирую поле с именем "ТоварыКоличество"        |
		| И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '12' |

	И в таблице "Товары" я активизирую поле с именем "ТоварыЦена"
	И в таблице "Товары" в поле с именем 'ТоварыЦена' я ввожу текст '200,00'
	И в таблице "Товары" текущая строка равна:
		| 'Сумма'    |
		| '200,00' |


* проверка заполнения итогов
	И элемент формы 'Сумма (итог)' стал равен '200'

* заключительные действи
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
	И я жду, что поле с именем "Номер" перестанет быть пустым в течение 30 секунд
	И я сохраняю навигационную ссылку текущего окна в переменную "$СсылкаНаДокументПродажаТовара$"
	@screenshot
	И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
