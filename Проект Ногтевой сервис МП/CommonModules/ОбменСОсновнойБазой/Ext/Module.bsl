﻿Функция JSONВОбъект(СтрокаЧтения) Экспорт
    ЧтениеДанных = Новый ЧтениеJSON;
    ЧтениеДанных.УстановитьСтроку(СтрокаЧтения);            
    Объект = ПрочитатьJSON(ЧтениеДанных);    
    Возврат Объект;
КонецФункции

Функция ПолучитьТекстJSON(ДанныеJSON) Экспорт    
    ЗаписьJSON = Новый ЗаписьJSON;
    ПараметрыЗаписиJSON = Новый ПараметрыЗаписиJSON(, Символы.Таб);
    ЗаписьJSON.УстановитьСтроку(ПараметрыЗаписиJSON);
    ЗаписатьJSON(ЗаписьJSON, ДанныеJSON);    
    Возврат ЗаписьJSON.Закрыть();
КонецФункции   

Функция ОтправитьЗаписьВЦентральнуюБазу(СтруктураРеквизитовДокументаJSON) Экспорт    
    Соединение = Новый HTTPСоединение("192.168.1.4",,"MobileClient");
    HTTPЗапросЗапрос = Новый HTTPЗапрос("nogtevoy/hs/customerOrders/createOrder");
    HTTPЗапросЗапрос.УстановитьТелоИзСтроки(СтруктураРеквизитовДокументаJSON);
    Ответ = Соединение.ОтправитьДляОбработки(HTTPЗапросЗапрос);
    
    Если Ответ.КодСостояния = 200 Тогда        
        УспешноОтправлен = Истина;
    Иначе
        УспешноОтправлен = Ложь;
    КонецЕсли;
    
    Возврат УспешноОтправлен;    
КонецФункции