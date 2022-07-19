.class public Lcom/j256/ormlite/stmt/ColumnArg;
.super Ljava/lang/Object;
.source "ColumnArg.java"


# instance fields
.field private final columnName:Ljava/lang/String;

.field private final tableName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/j256/ormlite/stmt/ColumnArg;->tableName:Ljava/lang/String;

    .line 32
    iput-object p1, p0, Lcom/j256/ormlite/stmt/ColumnArg;->columnName:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "columnName"    # Ljava/lang/String;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/j256/ormlite/stmt/ColumnArg;->tableName:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/j256/ormlite/stmt/ColumnArg;->columnName:Ljava/lang/String;

    .line 42
    return-void
.end method


# virtual methods
.method public getColumnName()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/j256/ormlite/stmt/ColumnArg;->columnName:Ljava/lang/String;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/j256/ormlite/stmt/ColumnArg;->tableName:Ljava/lang/String;

    return-object v0
.end method
