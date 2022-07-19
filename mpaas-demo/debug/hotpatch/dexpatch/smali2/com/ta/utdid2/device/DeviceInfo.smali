.class public Lcom/ta/utdid2/device/DeviceInfo;
.super Ljava/lang/Object;


# static fields
.field static final CREATE_DEVICE_METADATA_LOCK:Ljava/lang/Object;

.field private static a:Lcom/ta/utdid2/device/Device;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    const/4 v0, 0x0

    sput-object v0, Lcom/ta/utdid2/device/DeviceInfo;->a:Lcom/ta/utdid2/device/Device;

    .line 11
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/ta/utdid2/device/DeviceInfo;->CREATE_DEVICE_METADATA_LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;)Lcom/ta/utdid2/device/Device;
    .locals 9
    .param p0, "aContext"    # Landroid/content/Context;

    .line 39
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 40
    sget-object v1, Lcom/ta/utdid2/device/DeviceInfo;->CREATE_DEVICE_METADATA_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 41
    :try_start_0
    invoke-static {p0}, Lcom/ta/utdid2/device/UTUtdid;->instance(Landroid/content/Context;)Lcom/ta/utdid2/device/UTUtdid;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ta/utdid2/device/UTUtdid;->getValue()Ljava/lang/String;

    move-result-object v2

    move-object v3, v0

    .line 42
    .local v3, "utdid":Ljava/lang/String;
    move-object v3, v2

    invoke-static {v2}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 44
    const-string v0, "\n"

    invoke-virtual {v3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    const/4 v0, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v3, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 47
    :cond_0
    new-instance v0, Lcom/ta/utdid2/device/Device;

    invoke-direct {v0}, Lcom/ta/utdid2/device/Device;-><init>()V

    .line 48
    .local v0, "device":Lcom/ta/utdid2/device/Device;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 49
    .local v4, "timestamp":J
    invoke-static {p0}, Lcom/ta/utdid2/android/utils/PhoneInfoUtils;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 50
    .local v2, "imei":Ljava/lang/String;
    invoke-static {p0}, Lcom/ta/utdid2/android/utils/PhoneInfoUtils;->getImsi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 51
    .local v6, "imsi":Ljava/lang/String;
    invoke-virtual {v0, v2}, Lcom/ta/utdid2/device/Device;->setDeviceId(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v0, v2}, Lcom/ta/utdid2/device/Device;->setImei(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v0, v4, v5}, Lcom/ta/utdid2/device/Device;->setCreateTimestamp(J)V

    .line 54
    invoke-virtual {v0, v6}, Lcom/ta/utdid2/device/Device;->setImsi(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v0, v3}, Lcom/ta/utdid2/device/Device;->setUtdid(Ljava/lang/String;)V

    .line 56
    invoke-static {v0}, Lcom/ta/utdid2/device/DeviceInfo;->getMetadataCheckSum(Lcom/ta/utdid2/device/Device;)J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Lcom/ta/utdid2/device/Device;->setCheckSum(J)V

    .line 57
    monitor-exit v1

    return-object v0

    .line 59
    .end local v0    # "device":Lcom/ta/utdid2/device/Device;
    .end local v2    # "imei":Ljava/lang/String;
    .end local v3    # "utdid":Ljava/lang/String;
    .end local v4    # "timestamp":J
    .end local v6    # "imsi":Ljava/lang/String;
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 61
    :cond_2
    :goto_0
    return-object v0
.end method

.method public static declared-synchronized getDevice(Landroid/content/Context;)Lcom/ta/utdid2/device/Device;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/ta/utdid2/device/DeviceInfo;

    monitor-enter v0

    .line 68
    :try_start_0
    sget-object v1, Lcom/ta/utdid2/device/DeviceInfo;->a:Lcom/ta/utdid2/device/Device;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 69
    monitor-exit v0

    return-object v1

    .line 71
    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_1

    .line 72
    :try_start_1
    invoke-static {p0}, Lcom/ta/utdid2/device/DeviceInfo;->a(Landroid/content/Context;)Lcom/ta/utdid2/device/Device;

    move-result-object v2

    .line 73
    .local v1, "device":Lcom/ta/utdid2/device/Device;
    move-object v1, v2

    sput-object v2, Lcom/ta/utdid2/device/DeviceInfo;->a:Lcom/ta/utdid2/device/Device;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    monitor-exit v0

    return-object v1

    .line 76
    .end local v1    # "device":Lcom/ta/utdid2/device/Device;
    :cond_1
    monitor-exit v0

    return-object v1

    .line 67
    .end local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static getMetadataCheckSum(Lcom/ta/utdid2/device/Device;)J
    .locals 5
    .param p0, "device"    # Lcom/ta/utdid2/device/Device;

    .line 17
    if-eqz p0, :cond_0

    .line 18
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 19
    invoke-virtual {p0}, Lcom/ta/utdid2/device/Device;->getUtdid()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/ta/utdid2/device/Device;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 20
    invoke-virtual {p0}, Lcom/ta/utdid2/device/Device;->getCreateTimestamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/ta/utdid2/device/Device;->getImsi()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 21
    invoke-virtual {p0}, Lcom/ta/utdid2/device/Device;->getImei()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 18
    const-string v1, "%s%s%s%s%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 22
    .local v2, "checkSumContent":Ljava/lang/String;
    move-object v2, v0

    invoke-static {v0}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Ljava/util/zip/Adler32;

    invoke-direct {v0}, Ljava/util/zip/Adler32;-><init>()V

    .line 24
    .local v1, "adler32":Ljava/util/zip/Adler32;
    move-object v1, v0

    invoke-virtual {v0}, Ljava/util/zip/Adler32;->reset()V

    .line 25
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/zip/Adler32;->update([B)V

    .line 26
    invoke-virtual {v1}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v3

    return-wide v3

    .line 29
    .end local v1    # "adler32":Ljava/util/zip/Adler32;
    .end local v2    # "checkSumContent":Ljava/lang/String;
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method
