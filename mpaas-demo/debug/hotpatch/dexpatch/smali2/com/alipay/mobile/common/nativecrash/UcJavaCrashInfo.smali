.class public Lcom/alipay/mobile/common/nativecrash/UcJavaCrashInfo;
.super Ljava/lang/Object;
.source "UcJavaCrashInfo.java"


# static fields
.field private static final BACK_TRACK_ENDS:Ljava/lang/String; = "Back traces ends."

.field private static final BACK_TRACK_STARTS:Ljava/lang/String; = "Back traces starts."

.field private static final NEXT_LINE:Ljava/lang/String; = "\n"

.field private static final TAG:Ljava/lang/String; = "UcJavaCrashInfo"

.field private static final THREAD_NAME_PREFIX:Ljava/lang/String; = "Thread Name: \'"

.field private static final THREAD_NAME_SUFFIX:Ljava/lang/String; = "\'"


# instance fields
.field private backTrace:Ljava/lang/String;

.field private crashThread:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getFirstLineFits([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 7
    .param p1, "lines"    # [Ljava/lang/String;
    .param p2, "start"    # Ljava/lang/String;
    .param p3, "end"    # Ljava/lang/String;
    .param p4, "contains"    # Ljava/lang/String;
    .param p5, "startIndex"    # I

    .line 84
    const/4 v0, -0x1

    if-eqz p1, :cond_6

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-le p5, v1, :cond_0

    goto :goto_1

    .line 88
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 89
    .local v1, "checkStart":Z
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 90
    .local v2, "checkEnd":Z
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 92
    .local v3, "checkContains":Z
    move v4, p5

    .local v4, "i":I
    :goto_0
    array-length v5, p1

    if-ge v4, v5, :cond_5

    .line 93
    const/4 v5, 0x1

    .line 94
    .local v5, "fits":Z
    if-eqz v1, :cond_1

    aget-object v6, p1, v4

    invoke-virtual {v6, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 95
    const/4 v5, 0x0

    .line 97
    :cond_1
    if-eqz v2, :cond_2

    aget-object v6, p1, v4

    invoke-virtual {v6, p3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 98
    const/4 v5, 0x0

    .line 100
    :cond_2
    if-eqz v3, :cond_3

    aget-object v6, p1, v4

    invoke-virtual {v6, p4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 101
    const/4 v5, 0x0

    .line 103
    :cond_3
    if-eqz v5, :cond_4

    .line 104
    return v4

    .line 92
    .end local v5    # "fits":Z
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 108
    .end local v4    # "i":I
    :cond_5
    return v0

    .line 85
    .end local v1    # "checkStart":Z
    .end local v2    # "checkEnd":Z
    .end local v3    # "checkContains":Z
    :cond_6
    :goto_1
    return v0
.end method

.method private innerParse(Ljava/lang/String;)V
    .locals 9
    .param p1, "crashInfo"    # Ljava/lang/String;

    .line 41
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    return-void

    .line 46
    :cond_0
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 49
    .local v7, "lines":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v7

    if-ge v1, v2, :cond_2

    .line 50
    aget-object v2, v7, v1

    const-string v3, "Thread Name: \'"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 51
    aget-object v2, v7, v1

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/common/nativecrash/UcJavaCrashInfo;->crashThread:Ljava/lang/String;

    .line 52
    const-string v3, "\'"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/common/nativecrash/UcJavaCrashInfo;->crashThread:Ljava/lang/String;

    .line 53
    goto :goto_1

    .line 49
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 59
    .end local v1    # "i":I
    :cond_2
    :goto_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v3, "Back traces starts."

    move-object v1, p0

    move-object v2, v7

    invoke-direct/range {v1 .. v6}, Lcom/alipay/mobile/common/nativecrash/UcJavaCrashInfo;->getFirstLineFits([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v8

    .line 60
    .local v8, "backTraceStartLine":I
    add-int/lit8 v6, v8, 0x1

    const-string v3, "Back traces ends."

    invoke-direct/range {v1 .. v6}, Lcom/alipay/mobile/common/nativecrash/UcJavaCrashInfo;->getFirstLineFits([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 61
    .local v1, "backTraceEndLine":I
    if-ltz v8, :cond_5

    if-le v1, v8, :cond_5

    .line 62
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .local v2, "builder":Ljava/lang/StringBuilder;
    add-int/lit8 v3, v8, 0x1

    .local v3, "i":I
    :goto_2
    if-ge v3, v1, :cond_4

    .line 64
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 65
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    :cond_3
    aget-object v4, v7, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 69
    .end local v3    # "i":I
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/nativecrash/UcJavaCrashInfo;->backTrace:Ljava/lang/String;

    .line 72
    .end local v1    # "backTraceEndLine":I
    .end local v2    # "builder":Ljava/lang/StringBuilder;
    .end local v8    # "backTraceStartLine":I
    :cond_5
    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/alipay/mobile/common/nativecrash/UcJavaCrashInfo;
    .locals 4
    .param p0, "crashInfo"    # Ljava/lang/String;

    .line 31
    new-instance v0, Lcom/alipay/mobile/common/nativecrash/UcJavaCrashInfo;

    invoke-direct {v0}, Lcom/alipay/mobile/common/nativecrash/UcJavaCrashInfo;-><init>()V

    .line 33
    .local v0, "rCrashInfo":Lcom/alipay/mobile/common/nativecrash/UcJavaCrashInfo;
    :try_start_0
    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/nativecrash/UcJavaCrashInfo;->innerParse(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    goto :goto_0

    .line 34
    :catchall_0
    move-exception v1

    .line 35
    .local v1, "tr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "UcJavaCrashInfo"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 37
    .end local v1    # "tr":Ljava/lang/Throwable;
    :goto_0
    return-object v0
.end method


# virtual methods
.method public getBackTrace()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/alipay/mobile/common/nativecrash/UcJavaCrashInfo;->backTrace:Ljava/lang/String;

    return-object v0
.end method

.method public getCrashThread()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/alipay/mobile/common/nativecrash/UcJavaCrashInfo;->crashThread:Ljava/lang/String;

    return-object v0
.end method
