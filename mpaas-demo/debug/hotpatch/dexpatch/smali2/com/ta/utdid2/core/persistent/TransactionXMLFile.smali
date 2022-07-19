.class public Lcom/ta/utdid2/core/persistent/TransactionXMLFile;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;
    }
.end annotation


# static fields
.field public static final MODE_PRIVATE:I

.field private static final c:Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/Object;

.field private b:Ljava/io/File;

.field private d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/io/File;",
            "Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "dir"    # Ljava/lang/String;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->a:Ljava/lang/Object;

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->d:Ljava/util/HashMap;

    .line 26
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 27
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->b:Ljava/io/File;

    return-void

    .line 29
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Directory can not be empty"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a()Ljava/io/File;
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 43
    :try_start_0
    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->b:Ljava/io/File;

    monitor-exit v0

    return-object v1

    .line 44
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static a(Ljava/io/File;)Ljava/io/File;
    .locals 3
    .param p0, "prefsFile"    # Ljava/io/File;

    .line 118
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".bak"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p0, "base"    # Ljava/io/File;
    .param p1, "name"    # Ljava/lang/String;

    .line 34
    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    .line 35
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0

    .line 37
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "File "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " contains a path separator"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 48
    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->a()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$000(Ljava/io/File;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Ljava/io/File;

    .line 17
    invoke-static {p0}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->a(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .locals 1

    .line 17
    sget-object v0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->c:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public getMySharedPreferences(Ljava/lang/String;I)Lcom/ta/utdid2/core/persistent/MySharedPreferences;
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .line 53
    invoke-direct {p0, p1}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 54
    .local v0, "f":Ljava/io/File;
    sget-object v1, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 55
    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->d:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    move-object v4, v2

    .line 56
    .local v4, "sp":Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;
    move-object v4, v3

    if-eqz v3, :cond_0

    :try_start_1
    invoke-virtual {v4}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->hasFileChanged()Z

    move-result v3

    if-nez v3, :cond_0

    .line 57
    monitor-exit v1

    return-object v4

    .line 59
    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_a

    .line 61
    const/4 v1, 0x0

    .line 62
    .local v1, "str":Ljava/io/FileInputStream;
    invoke-static {v0}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->a(Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    move-object v5, v2

    .line 63
    .local v5, "backup":Ljava/io/File;
    move-object v5, v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 64
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 65
    invoke-virtual {v5, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 68
    :cond_1
    const/4 v3, 0x0

    .line 69
    .local v3, "map":Ljava/util/Map;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 71
    :try_start_2
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 72
    move-object v1, v6

    invoke-static {v6}, Lcom/ta/utdid2/core/persistent/XmlUtils;->readMapXml(Ljava/io/InputStream;)Ljava/util/HashMap;

    move-result-object v6

    move-object v3, v6

    .line 73
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 95
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 98
    :goto_0
    goto :goto_9

    .line 96
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 90
    :catch_0
    move-exception v2

    goto :goto_1

    .line 74
    :catch_1
    move-exception v6

    goto :goto_2

    .line 93
    :catchall_1
    move-exception v2

    goto :goto_5

    :goto_1
    if-eqz v1, :cond_5

    .line 95
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    .line 96
    :catchall_2
    move-exception v2

    goto :goto_0

    .line 76
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_2
    :try_start_5
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 77
    move-object v1, v6

    invoke-virtual {v6}, Ljava/io/FileInputStream;->available()I

    move-result v6

    new-array v6, v6, [B

    .line 78
    .local v6, "buf":[B
    invoke-virtual {v1, v6}, Ljava/io/FileInputStream;->read([B)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 84
    .end local v6    # "buf":[B
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 87
    :goto_3
    goto :goto_8

    .line 85
    :catchall_3
    move-exception v6

    goto :goto_3

    .line 79
    :catch_2
    move-exception v6

    goto :goto_7

    .line 82
    :catchall_4
    move-exception v6

    if-eqz v1, :cond_2

    .line 84
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 87
    goto :goto_4

    .line 85
    :catchall_5
    move-exception v7

    .line 87
    :cond_2
    :goto_4
    nop

    .end local v0    # "f":Ljava/io/File;
    .end local v1    # "str":Ljava/io/FileInputStream;
    .end local v3    # "map":Ljava/util/Map;
    .end local v4    # "sp":Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;
    .end local v5    # "backup":Ljava/io/File;
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "mode":I
    :try_start_8
    throw v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 93
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v0    # "f":Ljava/io/File;
    .restart local v1    # "str":Ljava/io/FileInputStream;
    .restart local v3    # "map":Ljava/util/Map;
    .restart local v4    # "sp":Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;
    .restart local v5    # "backup":Ljava/io/File;
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p2    # "mode":I
    :goto_5
    if-eqz v1, :cond_3

    .line 95
    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 98
    goto :goto_6

    .line 96
    :catchall_6
    move-exception v6

    .line 98
    :cond_3
    :goto_6
    throw v2

    .line 82
    .restart local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_7
    if-eqz v1, :cond_4

    .line 84
    :try_start_a
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_3

    .line 93
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_4
    :goto_8
    if-eqz v1, :cond_5

    .line 95
    :try_start_b
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    goto :goto_0

    .line 96
    :catchall_7
    move-exception v2

    goto :goto_0

    .line 103
    :cond_5
    :goto_9
    move-object v2, v1

    .end local v1    # "str":Ljava/io/FileInputStream;
    .local v2, "str":Ljava/io/FileInputStream;
    sget-object v6, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->c:Ljava/lang/Object;

    monitor-enter v6

    .line 104
    if-eqz v4, :cond_6

    .line 105
    :try_start_c
    invoke-virtual {v4, v3}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->replace(Ljava/util/Map;)V

    goto :goto_a

    .line 107
    :cond_6
    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->d:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;

    .line 108
    move-object v4, v1

    if-nez v1, :cond_7

    .line 109
    new-instance v1, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;

    invoke-direct {v1, v0, p2, v3}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;-><init>(Ljava/io/File;ILjava/util/Map;)V

    move-object v4, v1

    .line 110
    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->d:Ljava/util/HashMap;

    invoke-virtual {v1, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    :cond_7
    :goto_a
    monitor-exit v6

    return-object v4

    .line 114
    :catchall_8
    move-exception v1

    monitor-exit v6
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    throw v1

    .line 59
    .end local v2    # "str":Ljava/io/FileInputStream;
    .end local v3    # "map":Ljava/util/Map;
    .end local v4    # "sp":Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;
    .end local v5    # "backup":Ljava/io/File;
    :catchall_9
    move-exception v3

    move-object v4, v2

    move-object v2, v3

    .restart local v4    # "sp":Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;
    :goto_b
    :try_start_d
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_a

    throw v2

    :catchall_a
    move-exception v2

    goto :goto_b
.end method
