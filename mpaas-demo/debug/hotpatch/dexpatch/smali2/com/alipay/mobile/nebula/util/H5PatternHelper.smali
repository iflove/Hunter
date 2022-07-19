.class public Lcom/alipay/mobile/nebula/util/H5PatternHelper;
.super Ljava/lang/Object;
.source "H5PatternHelper.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "H5PatternHelper"

.field private static sPatternCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->isDebuggable(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/alipay/mobile/nebula/util/H5PatternHelper;->DEBUG:Z

    .line 19
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/alipay/mobile/nebula/util/H5PatternHelper;->sPatternCache:Landroid/util/LruCache;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
    .locals 8
    .param p0, "patternStr"    # Ljava/lang/String;

    .line 36
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 37
    return-object v0

    .line 39
    :cond_0
    sget-object v1, Lcom/alipay/mobile/nebula/util/H5PatternHelper;->sPatternCache:Landroid/util/LruCache;

    invoke-virtual {v1, p0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/regex/Pattern;

    move-object v2, v0

    .line 40
    .local v2, "pattern":Ljava/util/regex/Pattern;
    move-object v2, v1

    const-string v3, "H5PatternHelper"

    if-eqz v1, :cond_2

    .line 41
    sget-boolean v0, Lcom/alipay/mobile/nebula/util/H5PatternHelper;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "pattern cache hit: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    :cond_1
    return-object v2

    .line 48
    :cond_2
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 49
    .local v4, "start":J
    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    move-object v2, v1

    .line 50
    sget-object v1, Lcom/alipay/mobile/nebula/util/H5PatternHelper;->sPatternCache:Landroid/util/LruCache;

    invoke-virtual {v1, p0, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-boolean v1, Lcom/alipay/mobile/nebula/util/H5PatternHelper;->DEBUG:Z

    if-eqz v1, :cond_3

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "pattern cache miss, use time: "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 52
    invoke-static {v3, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :cond_3
    return-object v2

    .line 56
    .end local v4    # "start":J
    :catch_0
    move-exception v1

    .line 57
    .local v1, "e":Ljava/util/regex/PatternSyntaxException;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "pattern "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " compile error!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 60
    .end local v1    # "e":Ljava/util/regex/PatternSyntaxException;
    return-object v0
.end method

.method public static matchRegex(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "regex"    # Ljava/lang/String;
    .param p1, "input"    # Ljava/lang/String;

    .line 23
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 26
    :cond_0
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5PatternHelper;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    const/4 v2, 0x0

    .line 27
    .local v2, "pattern":Ljava/util/regex/Pattern;
    move-object v2, v1

    if-nez v1, :cond_1

    .line 28
    return v0

    .line 30
    :cond_1
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 31
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0

    .line 24
    .end local v2    # "pattern":Ljava/util/regex/Pattern;
    :cond_2
    :goto_0
    return v0
.end method
