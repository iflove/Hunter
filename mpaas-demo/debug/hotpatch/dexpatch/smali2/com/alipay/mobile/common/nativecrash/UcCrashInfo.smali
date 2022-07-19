.class public Lcom/alipay/mobile/common/nativecrash/UcCrashInfo;
.super Ljava/lang/Object;
.source "UcCrashInfo.java"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/common/nativecrash/UcCrashInfo;->a:I

    .line 28
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alipay/mobile/common/nativecrash/UcCrashInfo;->b:Ljava/lang/String;

    .line 29
    iput v0, p0, Lcom/alipay/mobile/common/nativecrash/UcCrashInfo;->c:I

    .line 30
    iput-object v1, p0, Lcom/alipay/mobile/common/nativecrash/UcCrashInfo;->d:Ljava/lang/String;

    .line 31
    iput-object v1, p0, Lcom/alipay/mobile/common/nativecrash/UcCrashInfo;->e:Ljava/lang/String;

    return-void
.end method

.method private static a([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "lines"    # [Ljava/lang/String;
    .param p1, "start"    # Ljava/lang/String;
    .param p2, "contains"    # Ljava/lang/String;

    .line 97
    const/4 v0, 0x0

    if-eqz p0, :cond_6

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_0

    goto :goto_1

    .line 101
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 102
    .local v1, "checkStart":Z
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 103
    .local v2, "checkEnd":Z
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 105
    .local v3, "checkContains":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, p0

    if-ge v4, v5, :cond_5

    .line 106
    const/4 v5, 0x1

    .line 107
    .local v5, "fits":Z
    if-eqz v1, :cond_1

    aget-object v6, p0, v4

    invoke-virtual {v6, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 108
    const/4 v5, 0x0

    .line 110
    :cond_1
    if-eqz v2, :cond_2

    aget-object v6, p0, v4

    invoke-virtual {v6, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 111
    const/4 v5, 0x0

    .line 113
    :cond_2
    if-eqz v3, :cond_3

    aget-object v6, p0, v4

    invoke-virtual {v6, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 114
    const/4 v5, 0x0

    .line 116
    :cond_3
    if-eqz v5, :cond_4

    .line 117
    aget-object v0, p0, v4

    return-object v0

    .line 105
    .end local v5    # "fits":Z
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 121
    .end local v4    # "i":I
    :cond_5
    return-object v0

    .line 98
    .end local v1    # "checkStart":Z
    .end local v2    # "checkEnd":Z
    .end local v3    # "checkContains":Z
    :cond_6
    :goto_1
    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 11
    .param p1, "crashInfo"    # Ljava/lang/String;

    .line 44
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    return-void

    .line 49
    :cond_0
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 53
    const-string/jumbo v1, "signal "

    const-string v2, ", code "

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/common/nativecrash/UcCrashInfo;->a([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    .line 54
    .local v3, "crashSignalLine":Ljava/lang/String;
    move-object v3, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 55
    invoke-virtual {v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 56
    .local v0, "start":I
    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 57
    .local v1, "end":I
    const/4 v2, 0x1

    const/4 v4, 0x2

    const-string v5, "UcCrashInfo"

    const/4 v6, 0x0

    const-string v7, " "

    if-ltz v0, :cond_1

    if-le v1, v0, :cond_1

    .line 58
    add-int/lit8 v8, v0, 0x7

    invoke-virtual {v3, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 59
    invoke-virtual {v8, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 61
    .local v8, "signalParts":[Ljava/lang/String;
    :try_start_0
    aget-object v9, v8, v6

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/alipay/mobile/common/nativecrash/UcCrashInfo;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    goto :goto_0

    .line 62
    :catchall_0
    move-exception v9

    .line 63
    .local v9, "tr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v10

    invoke-interface {v10, v5, v9}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    .end local v9    # "tr":Ljava/lang/Throwable;
    :goto_0
    array-length v9, v8

    if-lt v9, v4, :cond_1

    .line 66
    aget-object v9, v8, v2

    iput-object v9, p0, Lcom/alipay/mobile/common/nativecrash/UcCrashInfo;->b:Ljava/lang/String;

    .line 69
    .end local v8    # "signalParts":[Ljava/lang/String;
    :cond_1
    const-string v8, "code "

    invoke-virtual {v3, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 70
    const-string v8, ", fault addr "

    invoke-virtual {v3, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 71
    if-ltz v0, :cond_2

    if-le v1, v0, :cond_2

    .line 72
    add-int/lit8 v8, v0, 0x5

    invoke-virtual {v3, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 73
    invoke-virtual {v8, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 75
    .local v7, "codeParts":[Ljava/lang/String;
    :try_start_1
    aget-object v6, v7, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/alipay/mobile/common/nativecrash/UcCrashInfo;->c:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 78
    goto :goto_1

    .line 76
    :catchall_1
    move-exception v6

    .line 77
    .local v6, "tr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v8

    invoke-interface {v8, v5, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 79
    .end local v6    # "tr":Ljava/lang/Throwable;
    :goto_1
    array-length v5, v7

    if-lt v5, v4, :cond_2

    .line 80
    aget-object v2, v7, v2

    iput-object v2, p0, Lcom/alipay/mobile/common/nativecrash/UcCrashInfo;->d:Ljava/lang/String;

    .line 83
    .end local v7    # "codeParts":[Ljava/lang/String;
    :cond_2
    const-string v2, "fault addr "

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 84
    move v0, v2

    if-ltz v2, :cond_3

    .line 85
    add-int/lit8 v2, v0, 0xb

    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/common/nativecrash/UcCrashInfo;->e:Ljava/lang/String;

    .line 89
    .end local v0    # "start":I
    .end local v1    # "end":I
    .end local v3    # "crashSignalLine":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/alipay/mobile/common/nativecrash/UcCrashInfo;
    .locals 4
    .param p0, "crashInfo"    # Ljava/lang/String;

    .line 34
    new-instance v0, Lcom/alipay/mobile/common/nativecrash/UcCrashInfo;

    invoke-direct {v0}, Lcom/alipay/mobile/common/nativecrash/UcCrashInfo;-><init>()V

    .line 36
    .local v0, "rCrashInfo":Lcom/alipay/mobile/common/nativecrash/UcCrashInfo;
    :try_start_0
    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/nativecrash/UcCrashInfo;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    goto :goto_0

    .line 37
    :catchall_0
    move-exception v1

    .line 38
    .local v1, "tr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "UcCrashInfo"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 40
    .end local v1    # "tr":Ljava/lang/Throwable;
    :goto_0
    return-object v0
.end method


# virtual methods
.method public getCrashSignal()I
    .locals 1

    .line 92
    iget v0, p0, Lcom/alipay/mobile/common/nativecrash/UcCrashInfo;->a:I

    return v0
.end method
