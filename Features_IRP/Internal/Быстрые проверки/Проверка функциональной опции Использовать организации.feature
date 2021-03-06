#language: ru

@tree
@БыстрыеПроверки

Функционал: Проверка функциональной опции Использовать организации

Контекст:
	Дано Я открыл новый сеанс TestClient или подключил уже существующий

//Сценарий: Проверка функциональной опции Использовать организации
//	И Я устанавливаю в константу "UseCompanies" значение "False"
//	И В командном интерфейсе я выбираю 'Продажи' 'Заказы покупателей'
//	Тогда открылось окно 'Заказы покупателей'
//	И я нажимаю на кнопку с именем 'FormCreate'
//	И элемент формы "Организация" отсутствует на форме
//	
//Сценарий: Проверка заполнения справочника Организация
//	И В командном интерфейсе я выбираю 'Справочники' 'Организации'
//	Тогда открылось окно 'Организации'
//	И я нажимаю на кнопку с именем 'FormCreate'
//	Тогда открылось окно 'Организация (создание)'
//	И в поле с именем 'Description_en' я ввожу текст 'Тестовый контрагент'
//	И я перехожу к следующему реквизиту
//	И из выпадающего списка с именем "Type" я выбираю точное значение 'Организация'
//	И я нажимаю на кнопку 'Записать'
//	Тогда элемент формы с именем "Type" стал равен 'Организация'
//	Тогда элемент формы с именем "Description_en" стал равен 'Тестовый контрагент'
//	И я нажимаю на кнопку с именем 'FormWriteAndClose'
//	И в таблице "List" я перехожу к строке:
//		| 'Наименование'        |
//		| 'Тестовый контрагент' |
//	И в таблице "List" я выбираю текущую строку
//	Тогда элемент формы с именем "Type" стал равен 'Организация'
//	Тогда элемент формы с именем "Description_en" стал равен 'Тестовый контрагент'
//	И я закрываю все окна клиентского приложения
	
Сценарий: Проверка расположения элементов в форме Организации
	И В командном интерфейсе я выбираю 'Справочники' 'Организации'
	Тогда открылось окно 'Организации'
	И я нажимаю на кнопку с именем 'FormCreate'
	@screenshot
	Тогда открылось окно 'Организация (создание)'