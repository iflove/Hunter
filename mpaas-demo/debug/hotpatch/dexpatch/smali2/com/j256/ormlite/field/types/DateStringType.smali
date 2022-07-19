.class public Lcom/j256/ormlite/field/types/DateStringType;
.super Lcom/j256/ormlite/field/types/BaseDateType;
.source "DateStringType.java"


# static fields
.field public static DEFAULT_WIDTH:I

.field private static final singleTon:Lcom/j256/ormlite/field/types/DateStringType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const/16 v0, 0x32

    sput v0, Lcom/j256/ormlite/field/types/DateStringType;->DEFAULT_WIDTH:I

    .line 30
    new-instance v0, Lcom/j256/ormlite/field/types/DateStringType;

    invoke-direct {v0}, Lcom/j256/ormlite/field/types/DateStringType;-><init>()V

    sput-object v0, Lcom/j256/ormlite/field/types/DateStringType;->singleTon:Lcom/j256/ormlite/field/types/DateStringType;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 37
    sget-object v0, Lcom/j256/ormlite/field/SqlType;->STRING:Lcom/j256/ormlite/field/SqlType;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-direct {p0, v0, v1}, Lcom/j256/ormlite/field/types/BaseDateType;-><init>(Lcom/j256/ormlite/field/SqlType;[Ljava/lang/Class;)V

    .line 38
    return-void
.end method

.method protected constructor <init>(Lcom/j256/ormlite/field/SqlType;[Ljava/lang/Class;)V
    .locals 0
    .param p1, "sqlType"    # Lcom/j256/ormlite/field/SqlType;
    .param p2, "classes"    # [Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/field/SqlType;",
            "[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/j256/ormlite/field/types/BaseDateType;-><init>(Lcom/j256/ormlite/field/SqlType;[Ljava/lang/Class;)V

    .line 45
    return-void
.end method

.method public static getSingleton()Lcom/j256/ormlite/field/types/DateStringType;
    .locals 1

    .line 33
    sget-object v0, Lcom/j256/ormlite/field/types/DateStringType;->singleTon:Lcom/j256/ormlite/field/types/DateStringType;

    return-object v0
.end method


# virtual methods
.method public getDefaultWidth()I
    .locals 1

    .line 105
    sget v0, Lcom/j256/ormlite/field/types/DateStringType;->DEFAULT_WIDTH:I

    return v0
.end method

.method public getPrimaryClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 115
    const-class v0, [B

    return-object v0
.end method

.method public javaToSqlArg(Lcom/j256/ormlite/field/FieldType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "fieldType"    # Lcom/j256/ormlite/field/FieldType;
    .param p2, "obj"    # Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/j256/ormlite/field/types/DateStringType;->defaultDateFormatConfig:Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig;

    invoke-static {p1, v0}, Lcom/j256/ormlite/field/types/DateStringType;->convertDateStringConfig(Lcom/j256/ormlite/field/FieldType;Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig;)Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig;->getDateFormat()Ljava/text/DateFormat;

    move-result-object v0

    .line 86
    .local v0, "dateFormat":Ljava/text/DateFormat;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/j256/ormlite/field/FieldType;->isEncryption()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    move-object v1, p2

    check-cast v1, Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/j256/ormlite/field/encrypt/OrmLiteEncryptionProcessor;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 89
    :cond_0
    move-object v1, p2

    check-cast v1, Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public makeConfigObject(Lcom/j256/ormlite/field/FieldType;)Ljava/lang/Object;
    .locals 2
    .param p1, "fieldType"    # Lcom/j256/ormlite/field/FieldType;

    .line 95
    invoke-virtual {p1}, Lcom/j256/ormlite/field/FieldType;->getFormat()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 96
    .local v1, "format":Ljava/lang/String;
    move-object v1, v0

    if-nez v0, :cond_0

    .line 97
    sget-object v0, Lcom/j256/ormlite/field/types/DateStringType;->defaultDateFormatConfig:Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig;

    return-object v0

    .line 99
    :cond_0
    new-instance v0, Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig;

    invoke-direct {v0, v1}, Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public parseDefaultString(Lcom/j256/ormlite/field/FieldType;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p1, "fieldType"    # Lcom/j256/ormlite/field/FieldType;
    .param p2, "defaultStr"    # Ljava/lang/String;

    .line 49
    sget-object v0, Lcom/j256/ormlite/field/types/DateStringType;->defaultDateFormatConfig:Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig;

    invoke-static {p1, v0}, Lcom/j256/ormlite/field/types/DateStringType;->convertDateStringConfig(Lcom/j256/ormlite/field/FieldType;Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig;)Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig;

    move-result-object v0

    .line 52
    .local v0, "formatConfig":Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig;
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/j256/ormlite/field/FieldType;->isEncryption()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    invoke-static {v0, p2}, Lcom/j256/ormlite/field/types/DateStringType;->normalizeDateString(Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/j256/ormlite/field/encrypt/OrmLiteEncryptionProcessor;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 55
    :cond_0
    invoke-static {v0, p2}, Lcom/j256/ormlite/field/types/DateStringType;->normalizeDateString(Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 57
    :catch_0
    move-exception v1

    .line 58
    .local v1, "e":Ljava/text/ParseException;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Problems with field "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " parsing default date-string \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' using \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v2

    throw v2
.end method

.method public resultStringToJava(Lcom/j256/ormlite/field/FieldType;Ljava/lang/String;I)Ljava/lang/Object;
    .locals 1
    .param p1, "fieldType"    # Lcom/j256/ormlite/field/FieldType;
    .param p2, "stringValue"    # Ljava/lang/String;
    .param p3, "columnPos"    # I

    .line 110
    invoke-virtual {p0, p1, p2, p3}, Lcom/j256/ormlite/field/types/DateStringType;->sqlArgToJava(Lcom/j256/ormlite/field/FieldType;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public resultToSqlArg(Lcom/j256/ormlite/field/FieldType;Lcom/j256/ormlite/support/DatabaseResults;I)Ljava/lang/Object;
    .locals 1
    .param p1, "fieldType"    # Lcom/j256/ormlite/field/FieldType;
    .param p2, "results"    # Lcom/j256/ormlite/support/DatabaseResults;
    .param p3, "columnPos"    # I

    .line 65
    invoke-interface {p2, p3}, Lcom/j256/ormlite/support/DatabaseResults;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public sqlArgToJava(Lcom/j256/ormlite/field/FieldType;Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 5
    .param p1, "fieldType"    # Lcom/j256/ormlite/field/FieldType;
    .param p2, "sqlArg"    # Ljava/lang/Object;
    .param p3, "columnPos"    # I

    .line 70
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    .line 71
    .local v0, "value":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/j256/ormlite/field/FieldType;->isEncryption()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    invoke-static {v0}, Lcom/j256/ormlite/field/encrypt/OrmLiteEncryptionProcessor;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    :cond_0
    sget-object v1, Lcom/j256/ormlite/field/types/DateStringType;->defaultDateFormatConfig:Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig;

    invoke-static {p1, v1}, Lcom/j256/ormlite/field/types/DateStringType;->convertDateStringConfig(Lcom/j256/ormlite/field/FieldType;Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig;)Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig;

    move-result-object v1

    .line 76
    .local v1, "formatConfig":Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig;
    :try_start_0
    invoke-static {v1, v0}, Lcom/j256/ormlite/field/types/DateStringType;->parseDateString(Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 77
    :catch_0
    move-exception v2

    .line 78
    .local v2, "e":Ljava/text/ParseException;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Problems with column "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " parsing date-string \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' using \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v3

    throw v3
.end method
