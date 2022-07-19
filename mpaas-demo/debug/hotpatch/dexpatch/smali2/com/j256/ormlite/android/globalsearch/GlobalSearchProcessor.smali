.class public Lcom/j256/ormlite/android/globalsearch/GlobalSearchProcessor;
.super Ljava/lang/Object;
.source "GlobalSearchProcessor.java"


# static fields
.field private static globalSearchAgent:Lcom/j256/ormlite/android/globalsearch/GlobalSearchAgent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addDB(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .param p0, "dbPath"    # Ljava/lang/String;
    .param p1, "dbName"    # Ljava/lang/String;
    .param p2, "dbConnection"    # I

    .line 21
    sget-object v0, Lcom/j256/ormlite/android/globalsearch/GlobalSearchProcessor;->globalSearchAgent:Lcom/j256/ormlite/android/globalsearch/GlobalSearchAgent;

    if-eqz v0, :cond_0

    .line 22
    invoke-interface {v0, p0, p1, p2}, Lcom/j256/ormlite/android/globalsearch/GlobalSearchAgent;->addDB(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0

    .line 24
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static addDB(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)Z
    .locals 6
    .param p0, "dbPath"    # Ljava/lang/String;
    .param p1, "dbName"    # Ljava/lang/String;
    .param p2, "dbConnection"    # I
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "useWAL"    # Z

    .line 28
    sget-object v0, Lcom/j256/ormlite/android/globalsearch/GlobalSearchProcessor;->globalSearchAgent:Lcom/j256/ormlite/android/globalsearch/GlobalSearchAgent;

    if-eqz v0, :cond_0

    .line 29
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/j256/ormlite/android/globalsearch/GlobalSearchAgent;->addDB(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)Z

    move-result v0

    return v0

    .line 31
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static addIndexForTable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/lang/String;)Z
    .locals 1
    .param p0, "indexName"    # Ljava/lang/String;
    .param p1, "dbName"    # Ljava/lang/String;
    .param p2, "tableName"    # Ljava/lang/String;
    .param p3, "fields"    # Ljava/util/List;
    .param p4, "maxRows"    # I
    .param p5, "whereCondition"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 36
    sget-object v0, Lcom/j256/ormlite/android/globalsearch/GlobalSearchProcessor;->globalSearchAgent:Lcom/j256/ormlite/android/globalsearch/GlobalSearchAgent;

    if-eqz v0, :cond_0

    .line 37
    invoke-static/range {p0 .. p5}, Lcom/j256/ormlite/android/globalsearch/GlobalSearchProcessor;->addIndexForTable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/lang/String;)Z

    move-result v0

    return v0

    .line 39
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static addIndexForTable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/lang/String;Ljava/util/List;)Z
    .locals 1
    .param p0, "indexName"    # Ljava/lang/String;
    .param p1, "dbName"    # Ljava/lang/String;
    .param p2, "tableName"    # Ljava/lang/String;
    .param p3, "fields"    # Ljava/util/List;
    .param p4, "maxRows"    # I
    .param p5, "whereCondition"    # Ljava/lang/String;
    .param p6, "pinyinField"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 45
    sget-object v0, Lcom/j256/ormlite/android/globalsearch/GlobalSearchProcessor;->globalSearchAgent:Lcom/j256/ormlite/android/globalsearch/GlobalSearchAgent;

    if-eqz v0, :cond_0

    .line 46
    invoke-static/range {p0 .. p6}, Lcom/j256/ormlite/android/globalsearch/GlobalSearchProcessor;->addIndexForTable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/lang/String;Ljava/util/List;)Z

    move-result v0

    return v0

    .line 48
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static addIndexForTable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z
    .locals 1
    .param p0, "indexName"    # Ljava/lang/String;
    .param p1, "dbName"    # Ljava/lang/String;
    .param p2, "tableName"    # Ljava/lang/String;
    .param p3, "fields"    # Ljava/util/List;
    .param p4, "maxRows"    # I
    .param p5, "whereCondition"    # Ljava/lang/String;
    .param p6, "pinyinField"    # Ljava/util/List;
    .param p7, "profileField"    # Ljava/util/List;
    .param p8, "notokenField"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 56
    sget-object v0, Lcom/j256/ormlite/android/globalsearch/GlobalSearchProcessor;->globalSearchAgent:Lcom/j256/ormlite/android/globalsearch/GlobalSearchAgent;

    if-eqz v0, :cond_0

    .line 57
    invoke-static/range {p0 .. p8}, Lcom/j256/ormlite/android/globalsearch/GlobalSearchProcessor;->addIndexForTable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    return v0

    .line 59
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getGlobalSearchAgent()Lcom/j256/ormlite/android/globalsearch/GlobalSearchAgent;
    .locals 1

    .line 13
    sget-object v0, Lcom/j256/ormlite/android/globalsearch/GlobalSearchProcessor;->globalSearchAgent:Lcom/j256/ormlite/android/globalsearch/GlobalSearchAgent;

    return-object v0
.end method

.method public static setGlobalSearchAgent(Lcom/j256/ormlite/android/globalsearch/GlobalSearchAgent;)V
    .locals 0
    .param p0, "gsa"    # Lcom/j256/ormlite/android/globalsearch/GlobalSearchAgent;

    .line 17
    sput-object p0, Lcom/j256/ormlite/android/globalsearch/GlobalSearchProcessor;->globalSearchAgent:Lcom/j256/ormlite/android/globalsearch/GlobalSearchAgent;

    .line 18
    return-void
.end method
