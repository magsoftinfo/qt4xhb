$(QT4XHB_OBJ_DIR)/QSqlDriverSlotsMoc.cpp     : $(QT4XHB_SRC_DIR)/QtSql/QSqlDriverSlots.h
	moc $^ -o $@
$(QT4XHB_OBJ_DIR)/QSqlTableModelSlotsMoc.cpp : $(QT4XHB_SRC_DIR)/QtSql/QSqlTableModelSlots.h
	moc $^ -o $@