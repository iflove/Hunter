.class public final Lcom/alipay/mobile/quinox/framemonitor/tool/c;
.super Ljava/lang/Object;
.source "ProcStatParser.java"


# instance fields
.field private a:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, "^cpu  (\\d+) (\\d+) (\\d+) (\\d+) (\\d+) (\\d+) (\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/framemonitor/tool/c;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method public static b(Ljava/lang/String;)Lcom/alipay/mobile/quinox/framemonitor/cpu/d;
    .locals 7
    .param p0, "procStat"    # Ljava/lang/String;

    .line 48
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    return-object v0

    .line 51
    :cond_0
    const-string v1, ")"

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    .line 52
    .local v3, "index":I
    move v3, v1

    const/4 v4, -0x1

    if-ne v1, v4, :cond_1

    .line 53
    return-object v0

    .line 55
    :cond_1
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v4, " \\("

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    move-object v4, v0

    .line 56
    .local v4, "splitHeader":[Ljava/lang/String;
    move-object v4, v1

    array-length v1, v1

    const/4 v5, 0x2

    if-ge v1, v5, :cond_2

    .line 57
    return-object v0

    .line 60
    :cond_2
    add-int/lit8 v1, v3, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    move-object v5, v0

    .line 61
    .local v5, "splits":[Ljava/lang/String;
    move-object v5, v1

    array-length v1, v1

    const/16 v6, 0xe

    if-ge v1, v6, :cond_3

    .line 62
    return-object v0

    .line 65
    :cond_3
    new-instance v1, Lcom/alipay/mobile/quinox/framemonitor/cpu/d;

    invoke-direct {v1}, Lcom/alipay/mobile/quinox/framemonitor/cpu/d;-><init>()V

    move-object v6, v0

    .line 66
    .local v6, "procInfo":Lcom/alipay/mobile/quinox/framemonitor/cpu/d;
    move-object v6, v1

    aget-object v2, v4, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/alipay/mobile/quinox/framemonitor/cpu/d;->a:I

    .line 67
    const/4 v1, 0x1

    aget-object v1, v4, v1

    iput-object v1, v6, Lcom/alipay/mobile/quinox/framemonitor/cpu/d;->b:Ljava/lang/String;

    .line 68
    const/16 v1, 0xc

    aget-object v1, v5, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v6, Lcom/alipay/mobile/quinox/framemonitor/cpu/d;->c:J

    .line 69
    const/16 v1, 0xd

    aget-object v1, v5, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v6, Lcom/alipay/mobile/quinox/framemonitor/cpu/d;->d:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    return-object v6

    .line 71
    .end local v3    # "index":I
    .end local v4    # "splitHeader":[Ljava/lang/String;
    .end local v5    # "splits":[Ljava/lang/String;
    .end local v6    # "procInfo":Lcom/alipay/mobile/quinox/framemonitor/cpu/d;
    :catchall_0
    move-exception v1

    .line 72
    .local v1, "throwable":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "fail parse "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ProcStatParser"

    invoke-static {v3, v2, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 73
    return-object v0
.end method

.method public static c(Ljava/lang/String;)Lcom/alipay/mobile/quinox/framemonitor/cpu/e;
    .locals 7
    .param p0, "stat"    # Ljava/lang/String;

    .line 79
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    return-object v0

    .line 82
    :cond_0
    const-string v1, ")"

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    .line 83
    .local v3, "index":I
    move v3, v1

    const/4 v4, -0x1

    if-ne v1, v4, :cond_1

    .line 84
    return-object v0

    .line 86
    :cond_1
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v4, " \\("

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    move-object v4, v0

    .line 87
    .local v4, "splitHeader":[Ljava/lang/String;
    move-object v4, v1

    array-length v1, v1

    const/4 v5, 0x2

    if-ge v1, v5, :cond_2

    .line 88
    return-object v0

    .line 91
    :cond_2
    add-int/lit8 v1, v3, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    move-object v5, v0

    .line 92
    .local v5, "splits":[Ljava/lang/String;
    move-object v5, v1

    array-length v1, v1

    const/16 v6, 0xd

    if-ge v1, v6, :cond_3

    .line 93
    return-object v0

    .line 95
    :cond_3
    new-instance v1, Lcom/alipay/mobile/quinox/framemonitor/cpu/e;

    invoke-direct {v1}, Lcom/alipay/mobile/quinox/framemonitor/cpu/e;-><init>()V

    move-object v6, v0

    .line 96
    .local v6, "threadInfo":Lcom/alipay/mobile/quinox/framemonitor/cpu/e;
    move-object v6, v1

    aget-object v2, v4, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/alipay/mobile/quinox/framemonitor/cpu/e;->a:I

    .line 97
    const/4 v1, 0x1

    aget-object v1, v4, v1

    iput-object v1, v6, Lcom/alipay/mobile/quinox/framemonitor/cpu/e;->b:Ljava/lang/String;

    .line 98
    const/16 v1, 0xb

    aget-object v1, v5, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v6, Lcom/alipay/mobile/quinox/framemonitor/cpu/e;->d:J

    .line 99
    const/16 v1, 0xc

    aget-object v1, v5, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v6, Lcom/alipay/mobile/quinox/framemonitor/cpu/e;->c:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    return-object v6

    .line 101
    .end local v3    # "index":I
    .end local v4    # "splitHeader":[Ljava/lang/String;
    .end local v5    # "splits":[Ljava/lang/String;
    .end local v6    # "threadInfo":Lcom/alipay/mobile/quinox/framemonitor/cpu/e;
    :catchall_0
    move-exception v1

    .line 102
    .local v1, "throwable":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "fail parse "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ProcStatParser"

    invoke-static {v3, v2, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 103
    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/alipay/mobile/quinox/framemonitor/cpu/b;
    .locals 6
    .param p1, "totalStat"    # Ljava/lang/String;

    .line 24
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 25
    return-object v1

    .line 28
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/framemonitor/tool/c;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v2, v1

    .line 29
    .local v2, "matcher":Ljava/util/regex/Matcher;
    move-object v2, v0

    :try_start_1
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 30
    new-instance v0, Lcom/alipay/mobile/quinox/framemonitor/cpu/b;

    invoke-direct {v0}, Lcom/alipay/mobile/quinox/framemonitor/cpu/b;-><init>()V

    move-object v3, v1

    .line 31
    .local v3, "cpuInfo":Lcom/alipay/mobile/quinox/framemonitor/cpu/b;
    move-object v3, v0

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/alipay/mobile/quinox/framemonitor/cpu/b;->a:J

    .line 32
    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/alipay/mobile/quinox/framemonitor/cpu/b;->b:J

    .line 33
    const/4 v0, 0x3

    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/alipay/mobile/quinox/framemonitor/cpu/b;->c:J

    .line 34
    const/4 v0, 0x4

    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/alipay/mobile/quinox/framemonitor/cpu/b;->d:J

    .line 35
    const/4 v0, 0x5

    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/alipay/mobile/quinox/framemonitor/cpu/b;->e:J

    .line 36
    const/4 v0, 0x6

    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/alipay/mobile/quinox/framemonitor/cpu/b;->f:J

    .line 37
    const/4 v0, 0x7

    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/alipay/mobile/quinox/framemonitor/cpu/b;->g:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    return-object v3

    .line 42
    .end local v2    # "matcher":Ljava/util/regex/Matcher;
    .end local v3    # "cpuInfo":Lcom/alipay/mobile/quinox/framemonitor/cpu/b;
    :cond_1
    goto :goto_1

    .line 40
    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v2, v1

    :goto_0
    move-object v0, v2

    .line 41
    .local v0, "throwable":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "fail parse "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ProcStatParser"

    invoke-static {v3, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :goto_1
    return-object v1
.end method
