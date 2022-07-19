.class public Lcom/alipay/mobile/webar/PermissionDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "PermissionDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/webar/PermissionDatabaseHelper$PERMISSION_TYPE;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 48
    const-string v0, "com_alipay_mobile_webar_permission_database.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 49
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .line 66
    invoke-virtual {p0}, Lcom/alipay/mobile/webar/PermissionDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    .line 67
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 68
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 69
    .local v2, "time":J
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    const-string v4, "permission"

    const-string v5, "expiration < ?"

    invoke-virtual {v1, v4, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 70
    .end local v2    # "time":J
    return-void

    .line 71
    :cond_0
    const-string v0, "PermissionDatabaseHelper"

    const-string v2, "db is null, deleteExpiration fail"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/alipay/mobile/webar/PermissionDatabaseHelper$PERMISSION_TYPE;J)V
    .locals 7
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/alipay/mobile/webar/PermissionDatabaseHelper$PERMISSION_TYPE;
    .param p3, "time"    # J

    .line 103
    invoke-virtual {p0}, Lcom/alipay/mobile/webar/PermissionDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 104
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    move-object v2, v0

    if-eqz v0, :cond_0

    .line 105
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v0, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/alipay/mobile/webar/PermissionDatabaseHelper$PERMISSION_TYPE;->ordinal()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v0, v4

    const-string v3, "permission"

    const-string v5, "url = ? and type = ? "

    invoke-virtual {v2, v3, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 106
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    move-object v5, v1

    .line 107
    .local v5, "cv":Landroid/content/ContentValues;
    move-object v5, v0

    const-string v6, "url"

    invoke-virtual {v0, v6, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Lcom/alipay/mobile/webar/PermissionDatabaseHelper$PERMISSION_TYPE;->ordinal()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v6, "type"

    invoke-virtual {v5, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 109
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v6, "expiration"

    invoke-virtual {v5, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 110
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v4, "allow"

    invoke-virtual {v5, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 111
    invoke-virtual {v2, v3, v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 112
    .end local v5    # "cv":Landroid/content/ContentValues;
    return-void

    .line 113
    :cond_0
    const-string v0, "PermissionDatabaseHelper"

    const-string v1, "db is null, savePermission fail"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/alipay/mobile/webar/PermissionDatabaseHelper$PERMISSION_TYPE;)Z
    .locals 14
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/alipay/mobile/webar/PermissionDatabaseHelper$PERMISSION_TYPE;

    .line 82
    invoke-virtual {p0}, Lcom/alipay/mobile/webar/PermissionDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v9, 0x0

    move-object v0, v9

    .line 83
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    move-object v0, v1

    const/4 v10, 0x0

    if-eqz v1, :cond_1

    .line 84
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    .line 85
    .local v11, "time":J
    const-string v1, "_id"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x3

    new-array v4, v1, [Ljava/lang/String;

    aput-object p1, v4, v10

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lcom/alipay/mobile/webar/PermissionDatabaseHelper$PERMISSION_TYPE;->ordinal()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v13, 0x1

    aput-object v1, v4, v13

    const/4 v1, 0x2

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v1, "permission"

    const-string v3, "url = ? and type = ? and allow = 1 and expiration >= ?"

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object v2, v9

    .line 86
    .local v2, "Cursor":Landroid/database/Cursor;
    move-object v2, v1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 87
    .local v1, "count":I
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 88
    if-lez v1, :cond_0

    return v13

    :cond_0
    return v10

    .line 90
    .end local v1    # "count":I
    .end local v2    # "Cursor":Landroid/database/Cursor;
    .end local v11    # "time":J
    :cond_1
    const-string v1, "PermissionDatabaseHelper"

    const-string v2, "db is null, isPermissionAllow fail"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    return v10
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "sqLiteDatabase"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 53
    const-string v0, "CREATE TABLE IF NOT EXISTS permission (_id integer primary key autoincrement, url varchar(2048), type integer, expiration INTEGER, allow char(1))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "sqLiteDatabase"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "i"    # I
    .param p3, "i1"    # I

    .line 59
    return-void
.end method
