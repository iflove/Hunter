.class public Lcom/alipay/mobile/common/logging/api/DeviceHWInfo;
.super Ljava/lang/Object;
.source "DeviceHWInfo.java"


# static fields
.field public static final DEVICEINFO_NO_INIT:I = -0x64

.field public static final DEVICEINFO_UNKNOWN:I = -0x1

.field public static final TAG:Ljava/lang/String; = "DeviceHWInfo"

.field private static final a:Ljava/io/FileFilter;

.field static sCoreNum:I

.field static sCpuName:Ljava/lang/String;

.field static sFrequency:I

.field static sRamSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 35
    const/16 v0, -0x64

    sput v0, Lcom/alipay/mobile/common/logging/api/DeviceHWInfo;->sFrequency:I

    .line 36
    const-wide/16 v1, -0x64

    sput-wide v1, Lcom/alipay/mobile/common/logging/api/DeviceHWInfo;->sRamSize:J

    .line 37
    sput v0, Lcom/alipay/mobile/common/logging/api/DeviceHWInfo;->sCoreNum:I

    .line 38
    const-string v0, "-100"

    sput-object v0, Lcom/alipay/mobile/common/logging/api/DeviceHWInfo;->sCpuName:Ljava/lang/String;

    .line 118
    new-instance v0, Lcom/alipay/mobile/common/logging/api/DeviceHWInfo$1;

    invoke-direct {v0}, Lcom/alipay/mobile/common/logging/api/DeviceHWInfo$1;-><init>()V

    sput-object v0, Lcom/alipay/mobile/common/logging/api/DeviceHWInfo;->a:Ljava/io/FileFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()I
    .locals 2

    .line 115
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/devices/system/cpu/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/alipay/mobile/common/logging/api/DeviceHWInfo;->a:Ljava/io/FileFilter;

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method private static a(Ljava/lang/String;)I
    .locals 3
    .param p0, "fileLocation"    # Ljava/lang/String;

    .line 82
    const/4 v0, 0x0

    .line 84
    .local v0, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 85
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 86
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 87
    invoke-static {v1}, Lcom/alipay/mobile/common/logging/api/DeviceHWInfo;->b(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 93
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    goto :goto_0

    .line 94
    :catchall_0
    move-exception v2

    .line 87
    :goto_0
    return v1

    .line 88
    :catch_0
    move-exception v1

    goto :goto_2

    .line 91
    :catchall_1
    move-exception v1

    if-eqz v0, :cond_0

    .line 93
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 96
    goto :goto_1

    .line 94
    :catchall_2
    move-exception v2

    .line 96
    :cond_0
    :goto_1
    throw v1

    .line 91
    :goto_2
    if-eqz v0, :cond_1

    .line 93
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 96
    goto :goto_3

    .line 94
    :catchall_3
    move-exception v1

    .line 89
    :cond_1
    :goto_3
    const/4 v1, -0x1

    return v1
.end method

.method private static a(Ljava/lang/String;Ljava/io/FileInputStream;)I
    .locals 7
    .param p0, "textToMatch"    # Ljava/lang/String;
    .param p1, "stream"    # Ljava/io/FileInputStream;

    .line 305
    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 307
    .local v0, "buffer":[B
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    .line 308
    .local v1, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_4

    .line 309
    aget-byte v3, v0, v2

    const/16 v4, 0xa

    if-eq v3, v4, :cond_0

    if-nez v2, :cond_3

    .line 310
    :cond_0
    aget-byte v3, v0, v2

    if-ne v3, v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    .line 311
    :cond_1
    move v3, v2

    .local v3, "j":I
    :goto_1
    if-ge v3, v1, :cond_3

    .line 312
    sub-int v4, v3, v2

    .line 314
    .local v4, "textIndex":I
    aget-byte v5, v0, v3

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v5, v6, :cond_3

    .line 318
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v4, v5, :cond_2

    .line 319
    invoke-static {v0, v3}, Lcom/alipay/mobile/common/logging/api/DeviceHWInfo;->a([BI)I

    move-result v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v5

    .line 311
    .end local v4    # "textIndex":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 308
    .end local v3    # "j":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v1    # "length":I
    .end local v2    # "i":I
    :cond_4
    goto :goto_2

    .line 326
    :catch_0
    move-exception v1

    goto :goto_3

    .line 324
    :catch_1
    move-exception v1

    .line 328
    :goto_2
    nop

    .line 329
    :goto_3
    const/4 v1, -0x1

    return v1
.end method

.method private static a([BI)I
    .locals 4
    .param p0, "buffer"    # [B
    .param p1, "index"    # I

    .line 341
    :goto_0
    const/16 v0, 0x400

    if-ge p1, v0, :cond_2

    aget-byte v1, p0, p1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_2

    .line 342
    aget-byte v1, p0, p1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 343
    move v1, p1

    .line 344
    .local v1, "start":I
    add-int/lit8 p1, p1, 0x1

    .line 345
    :goto_1
    if-ge p1, v0, :cond_0

    aget-byte v2, p0, p1

    invoke-static {v2}, Ljava/lang/Character;->isDigit(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 346
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 348
    :cond_0
    new-instance v0, Ljava/lang/String;

    const/4 v2, 0x0

    sub-int v3, p1, v1

    invoke-direct {v0, p0, v2, v1, v3}, Ljava/lang/String;-><init>([BIII)V

    .line 349
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 351
    .end local v1    # "start":I
    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 353
    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method private static b(Ljava/lang/String;)I
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 108
    if-eqz p0, :cond_1

    const-string v0, "0-[\\d]+$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 111
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0

    .line 109
    :cond_1
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public static getCPUMaxFreqKHz()I
    .locals 10

    .line 142
    sget v0, Lcom/alipay/mobile/common/logging/api/DeviceHWInfo;->sFrequency:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 143
    return v0

    .line 145
    :cond_0
    const/16 v2, -0x64

    if-ne v0, v2, :cond_7

    .line 146
    const-class v0, Lcom/alipay/mobile/common/logging/api/DeviceHWInfo;

    monitor-enter v0

    .line 148
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/DeviceHWInfo;->getNumberOfCPUCores()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 149
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "/sys/devices/system/cpu/cpu"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "/cpufreq/cpuinfo_max_freq"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 151
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 153
    const/16 v5, 0x80

    new-array v7, v5, [B

    .line 154
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 156
    :try_start_1
    invoke-virtual {v8, v7}, Ljava/io/FileInputStream;->read([B)I

    .line 157
    const/4 v6, 0x0

    .line 159
    :goto_1
    aget-byte v9, v7, v6

    invoke-static {v9}, Ljava/lang/Character;->isDigit(I)Z

    move-result v9

    if-eqz v9, :cond_1

    if-ge v6, v5, :cond_1

    .line 160
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 162
    :cond_1
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v7, v3, v6}, Ljava/lang/String;-><init>([BII)V

    .line 163
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 164
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sget v7, Lcom/alipay/mobile/common/logging/api/DeviceHWInfo;->sFrequency:I

    if-le v6, v7, :cond_2

    .line 165
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sput v5, Lcom/alipay/mobile/common/logging/api/DeviceHWInfo;->sFrequency:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 171
    :cond_2
    :try_start_2
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_3

    .line 170
    :catchall_0
    move-exception v2

    .line 171
    :try_start_3
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 174
    goto :goto_2

    .line 172
    :catchall_1
    move-exception v3

    .line 174
    :goto_2
    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    .line 167
    :catch_0
    move-exception v5

    .line 171
    :try_start_5
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 174
    :goto_3
    goto :goto_4

    .line 172
    :catchall_2
    move-exception v5

    .line 148
    :cond_3
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 178
    :cond_4
    :try_start_6
    sget v3, Lcom/alipay/mobile/common/logging/api/DeviceHWInfo;->sFrequency:I

    if-ne v3, v2, :cond_6

    .line 179
    new-instance v2, Ljava/io/FileInputStream;

    const-string v3, "/proc/cpuinfo"

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 181
    :try_start_7
    const-string v3, "cpu MHz"

    invoke-static {v3, v2}, Lcom/alipay/mobile/common/logging/api/DeviceHWInfo;->a(Ljava/lang/String;Ljava/io/FileInputStream;)I

    move-result v3

    .line 182
    mul-int/lit16 v3, v3, 0x3e8

    .line 183
    sget v4, Lcom/alipay/mobile/common/logging/api/DeviceHWInfo;->sFrequency:I

    if-le v3, v4, :cond_5

    sput v3, Lcom/alipay/mobile/common/logging/api/DeviceHWInfo;->sFrequency:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 186
    :cond_5
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 189
    goto :goto_6

    .line 187
    :catchall_3
    move-exception v1

    .line 190
    goto :goto_6

    .line 185
    :catchall_4
    move-exception v3

    .line 186
    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 189
    goto :goto_5

    .line 187
    :catchall_5
    move-exception v2

    .line 189
    :goto_5
    :try_start_a
    throw v3
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 194
    :cond_6
    goto :goto_6

    .line 195
    :catchall_6
    move-exception v1

    goto :goto_7

    .line 192
    :catch_1
    move-exception v2

    .line 193
    :try_start_b
    sput v1, Lcom/alipay/mobile/common/logging/api/DeviceHWInfo;->sFrequency:I

    .line 195
    :goto_6
    monitor-exit v0

    goto :goto_8

    :goto_7
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    throw v1

    .line 197
    :cond_7
    :goto_8
    sget v0, Lcom/alipay/mobile/common/logging/api/DeviceHWInfo;->sFrequency:I

    return v0
.end method

.method public static getCpuName()Ljava/lang/String;
    .locals 9

    .line 252
    sget-object v0, Lcom/alipay/mobile/common/logging/api/DeviceHWInfo;->sCpuName:Ljava/lang/String;

    const-string v1, "-1"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    sget-object v0, Lcom/alipay/mobile/common/logging/api/DeviceHWInfo;->sCpuName:Ljava/lang/String;

    return-object v0

    .line 255
    :cond_0
    sget-object v0, Lcom/alipay/mobile/common/logging/api/DeviceHWInfo;->sCpuName:Ljava/lang/String;

    const-string v1, "-100"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 256
    const-class v0, Lcom/alipay/mobile/common/logging/api/DeviceHWInfo;

    monitor-enter v0

    .line 257
    const/4 v1, 0x0

    .line 258
    .local v1, "fr":Ljava/io/FileReader;
    const/4 v2, 0x0

    .line 260
    .local v2, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    const-string v4, "/proc/cpuinfo"

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    .line 261
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 262
    move-object v2, v3

    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, v4

    .line 263
    .local v5, "text":Ljava/lang/String;
    const-string v6, ":\\s+"

    const/4 v7, 0x2

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 264
    .local v4, "array":[Ljava/lang/String;
    const/4 v6, 0x1

    aget-object v3, v3, v6

    sput-object v3, Lcom/alipay/mobile/common/logging/api/DeviceHWInfo;->sCpuName:Ljava/lang/String;

    .line 265
    const-string v8, "0"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 266
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 267
    move-object v5, v3

    if-eqz v3, :cond_1

    .line 268
    const-string v3, ":\\s+"

    invoke-virtual {v5, v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 269
    move-object v4, v3

    array-length v3, v3

    if-le v3, v6, :cond_1

    .line 270
    aget-object v3, v4, v6

    sput-object v3, Lcom/alipay/mobile/common/logging/api/DeviceHWInfo;->sCpuName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 280
    .end local v4    # "array":[Ljava/lang/String;
    .end local v5    # "text":Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 283
    goto :goto_0

    .line 281
    :catchall_0
    move-exception v3

    .line 282
    .local v3, "e":Ljava/lang/Throwable;
    :try_start_2
    const-string v4, "DeviceHWInfo"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_8

    .line 286
    .end local v3    # "e":Ljava/lang/Throwable;
    :goto_0
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    .line 287
    :catchall_1
    move-exception v3

    .line 288
    .restart local v3    # "e":Ljava/lang/Throwable;
    :try_start_4
    const-string v4, "DeviceHWInfo"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_8

    goto :goto_3

    .line 274
    .end local v3    # "e":Ljava/lang/Throwable;
    :catchall_2
    move-exception v3

    .line 275
    .restart local v3    # "e":Ljava/lang/Throwable;
    :try_start_5
    const-string v4, "DeviceHWInfo"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 276
    const-string v4, "-1"

    sput-object v4, Lcom/alipay/mobile/common/logging/api/DeviceHWInfo;->sCpuName:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 278
    .end local v3    # "e":Ljava/lang/Throwable;
    if-eqz v1, :cond_2

    .line 280
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 283
    goto :goto_1

    .line 281
    :catchall_3
    move-exception v3

    .line 282
    .restart local v3    # "e":Ljava/lang/Throwable;
    :try_start_7
    const-string v4, "DeviceHWInfo"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_8

    .line 284
    .end local v3    # "e":Ljava/lang/Throwable;
    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    .line 286
    :try_start_8
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 289
    :goto_2
    goto :goto_4

    .line 287
    :catchall_4
    move-exception v3

    .line 288
    .restart local v3    # "e":Ljava/lang/Throwable;
    :try_start_9
    const-string v4, "DeviceHWInfo"

    :goto_3
    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 289
    nop

    .line 291
    .end local v1    # "fr":Ljava/io/FileReader;
    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v3    # "e":Ljava/lang/Throwable;
    :cond_3
    :goto_4
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    goto :goto_7

    .line 278
    .restart local v1    # "fr":Ljava/io/FileReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    :catchall_5
    move-exception v3

    if-eqz v1, :cond_4

    .line 280
    :try_start_a
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 283
    goto :goto_5

    .line 281
    :catchall_6
    move-exception v4

    .line 282
    .local v4, "e":Ljava/lang/Throwable;
    :try_start_b
    const-string v5, "DeviceHWInfo"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    .line 284
    .end local v4    # "e":Ljava/lang/Throwable;
    :cond_4
    :goto_5
    if-eqz v2, :cond_5

    .line 286
    :try_start_c
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    .line 289
    goto :goto_6

    .line 287
    :catchall_7
    move-exception v4

    .line 288
    .restart local v4    # "e":Ljava/lang/Throwable;
    :try_start_d
    const-string v5, "DeviceHWInfo"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 289
    .end local v4    # "e":Ljava/lang/Throwable;
    :cond_5
    :goto_6
    throw v3

    .line 291
    .end local v1    # "fr":Ljava/io/FileReader;
    .end local v2    # "br":Ljava/io/BufferedReader;
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    throw v1

    .line 293
    :cond_6
    :goto_7
    sget-object v0, Lcom/alipay/mobile/common/logging/api/DeviceHWInfo;->sCpuName:Ljava/lang/String;

    return-object v0
.end method

.method public static getNumberOfCPUCores()I
    .locals 4

    .line 46
    sget v0, Lcom/alipay/mobile/common/logging/api/DeviceHWInfo;->sCoreNum:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 47
    return v0

    .line 49
    :cond_0
    const/16 v2, -0x64

    if-ne v0, v2, :cond_4

    .line 50
    const-class v0, Lcom/alipay/mobile/common/logging/api/DeviceHWInfo;

    monitor-enter v0

    .line 51
    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xa

    if-gt v2, v3, :cond_1

    .line 56
    const/4 v1, 0x1

    .line 57
    sput v1, Lcom/alipay/mobile/common/logging/api/DeviceHWInfo;->sCoreNum:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    return v1

    .line 60
    :cond_1
    :try_start_1
    const-string v2, "/sys/devices/system/cpu/possible"

    invoke-static {v2}, Lcom/alipay/mobile/common/logging/api/DeviceHWInfo;->a(Ljava/lang/String;)I

    move-result v2

    .line 61
    sput v2, Lcom/alipay/mobile/common/logging/api/DeviceHWInfo;->sCoreNum:I

    if-ne v2, v1, :cond_2

    .line 62
    const-string v2, "/sys/devices/system/cpu/present"

    invoke-static {v2}, Lcom/alipay/mobile/common/logging/api/DeviceHWInfo;->a(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/alipay/mobile/common/logging/api/DeviceHWInfo;->sCoreNum:I

    .line 64
    :cond_2
    sget v2, Lcom/alipay/mobile/common/logging/api/DeviceHWInfo;->sCoreNum:I

    if-ne v2, v1, :cond_3

    .line 65
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/DeviceHWInfo;->a()I

    move-result v2

    sput v2, Lcom/alipay/mobile/common/logging/api/DeviceHWInfo;->sCoreNum:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    :cond_3
    goto :goto_0

    .line 67
    :catchall_0
    move-exception v2

    .line 68
    :try_start_2
    sput v1, Lcom/alipay/mobile/common/logging/api/DeviceHWInfo;->sCoreNum:I

    .line 70
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 72
    :cond_4
    :goto_1
    sget v0, Lcom/alipay/mobile/common/logging/api/DeviceHWInfo;->sCoreNum:I

    return v0
.end method

.method public static getTotalMemory(Landroid/content/Context;)J
    .locals 8

    .line 208
    sget-wide v0, Lcom/alipay/mobile/common/logging/api/DeviceHWInfo;->sRamSize:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 209
    return-wide v0

    .line 211
    :cond_0
    const-wide/16 v4, -0x64

    cmp-long v6, v0, v4

    if-nez v6, :cond_2

    .line 212
    const-class v0, Lcom/alipay/mobile/common/logging/api/DeviceHWInfo;

    monitor-enter v0

    .line 215
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v1, v4, :cond_1

    .line 216
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 217
    const-string v4, "activity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 218
    invoke-virtual {p0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 220
    iget-wide v4, v1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    sput-wide v4, Lcom/alipay/mobile/common/logging/api/DeviceHWInfo;->sRamSize:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 224
    goto :goto_2

    .line 225
    :cond_1
    nop

    .line 227
    :try_start_1
    new-instance p0, Ljava/io/FileInputStream;

    const-string v1, "/proc/meminfo"

    invoke-direct {p0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 229
    :try_start_2
    const-string v1, "MemTotal"

    invoke-static {v1, p0}, Lcom/alipay/mobile/common/logging/api/DeviceHWInfo;->a(Ljava/lang/String;Ljava/io/FileInputStream;)I

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    int-to-long v4, v1

    .line 230
    const-wide/16 v6, 0x400

    mul-long v4, v4, v6

    .line 233
    :try_start_3
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 236
    goto :goto_1

    .line 234
    :catchall_0
    move-exception p0

    .line 237
    goto :goto_1

    .line 232
    :catchall_1
    move-exception v1

    .line 233
    :try_start_4
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 236
    goto :goto_0

    .line 234
    :catchall_2
    move-exception p0

    .line 236
    :goto_0
    :try_start_5
    throw v1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 238
    :catch_0
    move-exception p0

    move-wide v4, v2

    .line 241
    :goto_1
    :try_start_6
    sput-wide v4, Lcom/alipay/mobile/common/logging/api/DeviceHWInfo;->sRamSize:J
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 245
    goto :goto_2

    .line 243
    :catchall_3
    move-exception p0

    .line 244
    :try_start_7
    sput-wide v2, Lcom/alipay/mobile/common/logging/api/DeviceHWInfo;->sRamSize:J

    .line 246
    :goto_2
    monitor-exit v0

    goto :goto_3

    :catchall_4
    move-exception p0

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw p0

    .line 248
    :cond_2
    :goto_3
    sget-wide v0, Lcom/alipay/mobile/common/logging/api/DeviceHWInfo;->sRamSize:J

    return-wide v0
.end method
