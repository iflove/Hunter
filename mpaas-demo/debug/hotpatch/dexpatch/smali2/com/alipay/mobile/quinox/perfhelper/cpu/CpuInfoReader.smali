.class public Lcom/alipay/mobile/quinox/perfhelper/cpu/CpuInfoReader;
.super Ljava/lang/Object;
.source "CpuInfoReader.java"


# instance fields
.field private final a:Landroidx/collection/CircularIntArray;

.field private final b:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/devices/system/cpu/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/perfhelper/cpu/CpuInfoReader;->b:Ljava/io/File;

    .line 26
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/perfhelper/cpu/CpuInfoReader;->a()Landroidx/collection/CircularIntArray;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/perfhelper/cpu/CpuInfoReader;->a:Landroidx/collection/CircularIntArray;

    .line 27
    return-void
.end method

.method private static a(ILjava/lang/String;)J
    .locals 5
    .param p0, "cpuId"    # I
    .param p1, "freqId"    # Ljava/lang/String;

    .line 87
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/sys/devices/system/cpu/cpu"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/cpufreq/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    move-object v2, v1

    .line 88
    .local v2, "file":Ljava/io/File;
    move-object v2, v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    const-wide/16 v0, -0x1

    return-wide v0

    .line 91
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v0

    if-nez v0, :cond_1

    .line 92
    const-wide/16 v0, -0x2

    return-wide v0

    .line 94
    :cond_1
    invoke-static {v2}, Lcom/alipay/mobile/quinox/utils/IOUtil;->readStringFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v1, "content":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 96
    const-wide/16 v3, -0x3

    return-wide v3

    .line 99
    :cond_2
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v3

    .line 100
    :catch_0
    move-exception v0

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "wrong freq: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", file: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "CpuInfoReader"

    invoke-static {v3, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-wide/16 v3, -0x4

    return-wide v3
.end method

.method private a()Landroidx/collection/CircularIntArray;
    .locals 3

    .line 64
    new-instance v0, Landroidx/collection/CircularIntArray;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Landroidx/collection/CircularIntArray;-><init>(I)V

    .line 65
    .local v0, "intArray":Landroidx/collection/CircularIntArray;
    iget-object v1, p0, Lcom/alipay/mobile/quinox/perfhelper/cpu/CpuInfoReader;->b:Ljava/io/File;

    new-instance v2, Lcom/alipay/mobile/quinox/perfhelper/cpu/CpuInfoReader$1;

    invoke-direct {v2, p0, v0}, Lcom/alipay/mobile/quinox/perfhelper/cpu/CpuInfoReader$1;-><init>(Lcom/alipay/mobile/quinox/perfhelper/cpu/CpuInfoReader;Landroidx/collection/CircularIntArray;)V

    invoke-virtual {v1, v2}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    .line 80
    invoke-virtual {v0}, Landroidx/collection/CircularIntArray;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    const/4 v1, 0x0

    return-object v1

    .line 83
    :cond_0
    return-object v0
.end method

.method private static a(Landroidx/collection/CircularIntArray;Ljava/lang/String;)[J
    .locals 5
    .param p0, "intArray"    # Landroidx/collection/CircularIntArray;
    .param p1, "cpuFreqId"    # Ljava/lang/String;

    .line 52
    if-nez p0, :cond_0

    .line 53
    const/4 v0, 0x0

    return-object v0

    .line 55
    :cond_0
    invoke-virtual {p0}, Landroidx/collection/CircularIntArray;->size()I

    move-result v0

    const/4 v1, 0x0

    .line 56
    .local v1, "size":I
    move v1, v0

    new-array v0, v0, [J

    .line 57
    .local v0, "ret":[J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 58
    invoke-virtual {p0, v2}, Landroidx/collection/CircularIntArray;->get(I)I

    move-result v3

    invoke-static {v3, p1}, Lcom/alipay/mobile/quinox/perfhelper/cpu/CpuInfoReader;->a(ILjava/lang/String;)J

    move-result-wide v3

    aput-wide v3, v0, v2

    .line 57
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 60
    .end local v2    # "i":I
    :cond_1
    return-object v0
.end method


# virtual methods
.method public readCpuInfo()Lcom/alipay/mobile/quinox/perfhelper/cpu/CpuInfo;
    .locals 7

    .line 30
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 32
    .local v0, "start":J
    new-instance v2, Lcom/alipay/mobile/quinox/perfhelper/cpu/CpuInfo;

    invoke-direct {v2}, Lcom/alipay/mobile/quinox/perfhelper/cpu/CpuInfo;-><init>()V

    const/4 v3, 0x0

    .line 33
    .local v3, "cpuInfo":Lcom/alipay/mobile/quinox/perfhelper/cpu/CpuInfo;
    move-object v3, v2

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/alipay/mobile/quinox/perfhelper/cpu/CpuInfoReader;->b:Ljava/io/File;

    const-string v6, "present"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/alipay/mobile/quinox/utils/IOUtil;->readStringFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/alipay/mobile/quinox/perfhelper/cpu/CpuInfo;->presentCores:Ljava/lang/String;

    .line 34
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/alipay/mobile/quinox/perfhelper/cpu/CpuInfoReader;->b:Ljava/io/File;

    const-string v5, "online"

    invoke-direct {v2, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/alipay/mobile/quinox/utils/IOUtil;->readStringFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/alipay/mobile/quinox/perfhelper/cpu/CpuInfo;->onlineCores:Ljava/lang/String;

    .line 35
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/alipay/mobile/quinox/perfhelper/cpu/CpuInfoReader;->b:Ljava/io/File;

    const-string v5, "offline"

    invoke-direct {v2, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/alipay/mobile/quinox/utils/IOUtil;->readStringFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/alipay/mobile/quinox/perfhelper/cpu/CpuInfo;->offlineCores:Ljava/lang/String;

    .line 37
    iget-object v2, p0, Lcom/alipay/mobile/quinox/perfhelper/cpu/CpuInfoReader;->a:Landroidx/collection/CircularIntArray;

    const-string v4, "scaling_cur_freq"

    invoke-static {v2, v4}, Lcom/alipay/mobile/quinox/perfhelper/cpu/CpuInfoReader;->a(Landroidx/collection/CircularIntArray;Ljava/lang/String;)[J

    move-result-object v2

    iput-object v2, v3, Lcom/alipay/mobile/quinox/perfhelper/cpu/CpuInfo;->cpuCurrentFreq:[J

    .line 38
    iget-object v2, p0, Lcom/alipay/mobile/quinox/perfhelper/cpu/CpuInfoReader;->a:Landroidx/collection/CircularIntArray;

    const-string v4, "scaling_max_freq"

    invoke-static {v2, v4}, Lcom/alipay/mobile/quinox/perfhelper/cpu/CpuInfoReader;->a(Landroidx/collection/CircularIntArray;Ljava/lang/String;)[J

    move-result-object v2

    iput-object v2, v3, Lcom/alipay/mobile/quinox/perfhelper/cpu/CpuInfo;->cpuMaxFreq:[J

    .line 39
    iget-object v2, p0, Lcom/alipay/mobile/quinox/perfhelper/cpu/CpuInfoReader;->a:Landroidx/collection/CircularIntArray;

    const-string v4, "scaling_min_freq"

    invoke-static {v2, v4}, Lcom/alipay/mobile/quinox/perfhelper/cpu/CpuInfoReader;->a(Landroidx/collection/CircularIntArray;Ljava/lang/String;)[J

    move-result-object v2

    iput-object v2, v3, Lcom/alipay/mobile/quinox/perfhelper/cpu/CpuInfo;->cpuMinFreq:[J

    .line 45
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v0

    .line 46
    .local v4, "cost":J
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "read cpu info cost "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " ms"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "CpuInfoReader"

    invoke-static {v6, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return-object v3
.end method
