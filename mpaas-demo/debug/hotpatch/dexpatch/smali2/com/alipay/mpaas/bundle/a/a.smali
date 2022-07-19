.class public final Lcom/alipay/mpaas/bundle/a/a;
.super Ljava/lang/Object;
.source "DiffFileMap.java"


# static fields
.field protected static final a:Ljava/util/regex/Pattern;


# instance fields
.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const-string v0, "(.*)\\s=>\\s(.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/alipay/mpaas/bundle/a/a;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "inputFile"    # Ljava/io/File;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mpaas/bundle/a/a;->b:Ljava/util/Map;

    .line 31
    invoke-direct {p0, p1}, Lcom/alipay/mpaas/bundle/a/a;->a(Ljava/io/File;)V

    .line 33
    :cond_0
    return-void
.end method

.method private a(Ljava/io/File;)V
    .locals 9
    .param p1, "inputFile"    # Ljava/io/File;

    .line 36
    const/4 v0, 0x0

    .line 38
    .local v0, "mapStr":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/lang/String;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v2}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->streamToBytes(Ljava/io/InputStream;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    .line 39
    :catch_0
    move-exception v1

    :goto_0
    nop

    .line 41
    if-eqz v0, :cond_2

    .line 42
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 43
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v5, v1, v3

    .line 44
    .local v5, "line":Ljava/lang/String;
    sget-object v6, Lcom/alipay/mpaas/bundle/a/a;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 45
    .local v4, "matcher":Ljava/util/regex/Matcher;
    move-object v4, v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_0

    goto :goto_2

    .line 50
    :cond_0
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 51
    .local v6, "newFile":Ljava/lang/String;
    invoke-virtual {v4, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    .line 52
    .local v7, "oldFile":Ljava/lang/String;
    iget-object v8, p0, Lcom/alipay/mpaas/bundle/a/a;->b:Ljava/util/Map;

    invoke-interface {v8, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 46
    .end local v6    # "newFile":Ljava/lang/String;
    .end local v7    # "oldFile":Ljava/lang/String;
    :cond_1
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "map regex error in : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ZipPatch"

    invoke-static {v7, v6}, Lcom/alipay/mobile/quinox/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    nop

    .line 43
    .end local v4    # "matcher":Ljava/util/regex/Matcher;
    .end local v5    # "line":Ljava/lang/String;
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 55
    :cond_2
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "newEntry"    # Ljava/lang/String;

    .line 58
    iget-object v0, p0, Lcom/alipay/mpaas/bundle/a/a;->b:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/alipay/mpaas/bundle/a/a;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 61
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
