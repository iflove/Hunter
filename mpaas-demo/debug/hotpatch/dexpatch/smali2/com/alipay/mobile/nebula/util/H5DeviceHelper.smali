.class public Lcom/alipay/mobile/nebula/util/H5DeviceHelper;
.super Ljava/lang/Object;
.source "H5DeviceHelper.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "H5DeviceHelper"

.field private static sAbi:Ljava/lang/String;

.field private static sAbiList:[Ljava/lang/String;

.field private static sArch:Ljava/lang/String;

.field private static sCpuAbi:Ljava/lang/String;

.field private static sCpuHardware:Ljava/lang/String;

.field private static sIsX86:Ljava/lang/Boolean;

.field private static sSupportedABIs:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/nebula/util/H5DeviceHelper;->sIsX86:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCpuHardware()Ljava/lang/String;
    .locals 7

    .line 218
    const-string v0, "H5DeviceHelper"

    sget-object v1, Lcom/alipay/mobile/nebula/util/H5DeviceHelper;->sCpuHardware:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 219
    return-object v1

    .line 221
    :cond_0
    const/4 v1, 0x0

    .line 223
    .local v1, "cpuHardware":Ljava/lang/String;
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v2

    .line 224
    .local v2, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    const/4 v3, 0x0

    .line 226
    .local v3, "bufferedReader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    const-string v6, "/proc/cpuinfo"

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v3, v4

    const/4 v4, 0x0

    .line 229
    :cond_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 230
    .local v4, "line":Ljava/lang/String;
    move-object v4, v5

    if-nez v5, :cond_2

    .line 231
    const-string v5, "/proc/cpuinfo lacks a Hardware entry, use Build.BOARD"

    invoke-static {v0, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    goto :goto_0

    .line 235
    :cond_2
    const-string v5, "Hardware\t: "

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 236
    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v0

    goto :goto_0

    .line 243
    .end local v4    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 240
    :catch_0
    move-exception v4

    .line 241
    .local v4, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v5, "Cannot get Hardware from /proc/cpuinfo"

    invoke-static {v0, v5, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 243
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 244
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 245
    nop

    .line 247
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 248
    sget-object v1, Landroid/os/Build;->BOARD:Ljava/lang/String;

    .line 250
    :cond_3
    if-nez v1, :cond_4

    const-string v0, ""

    goto :goto_1

    :cond_4
    move-object v0, v1

    .line 251
    :goto_1
    sput-object v0, Lcom/alipay/mobile/nebula/util/H5DeviceHelper;->sCpuHardware:Ljava/lang/String;

    return-object v0

    .line 243
    :goto_2
    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 244
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v0
.end method

.method private static getFromSystemProp(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "key"    # Ljava/lang/String;

    .line 182
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/build.prop"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 183
    .local v0, "propFile":Ljava/io/File;
    const/4 v1, 0x0

    .line 184
    .local v1, "propFIS":Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 185
    .local v2, "propISR":Ljava/io/InputStreamReader;
    const/4 v3, 0x0

    .line 187
    .local v3, "propBR":Ljava/io/BufferedReader;
    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v1, v5

    .line 188
    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object v2, v5

    .line 189
    new-instance v5, Ljava/io/BufferedReader;

    invoke-direct {v5, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v3, v5

    move-object v5, v4

    .line 192
    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    move-object v7, v6

    .local v7, "line":Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 193
    invoke-virtual {v7, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 196
    const-string v6, "="

    invoke-virtual {v7, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 197
    .local v5, "cols":[Ljava/lang/String;
    move-object v5, v6

    array-length v6, v6

    const/4 v8, 0x2

    if-ne v6, v8, :cond_1

    .line 198
    const/4 v6, 0x0

    aget-object v6, v5, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 199
    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 200
    const/4 v6, 0x1

    aget-object v6, v5, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 208
    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 209
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 200
    return-object v4

    .line 203
    .end local v5    # "cols":[Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 207
    .end local v7    # "line":Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 208
    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 209
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 210
    goto :goto_2

    .line 204
    :catchall_0
    move-exception v5

    .line 205
    .local v5, "e":Ljava/lang/Throwable;
    :try_start_1
    const-string v6, "H5DeviceHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "getFromSystemProp exception: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v5    # "e":Ljava/lang/Throwable;
    goto :goto_1

    .line 211
    :goto_2
    return-object v4

    .line 207
    :catchall_1
    move-exception v4

    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 208
    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 209
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v4
.end method

.method private static isArchContains(Ljava/lang/String;)Z
    .locals 7
    .param p0, "keyword"    # Ljava/lang/String;

    .line 119
    sget-object v0, Lcom/alipay/mobile/nebula/util/H5DeviceHelper;->sArch:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 120
    const-string/jumbo v0, "os.arch"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/nebula/util/H5DeviceHelper;->sArch:Ljava/lang/String;

    .line 122
    :cond_0
    sget-object v0, Lcom/alipay/mobile/nebula/util/H5DeviceHelper;->sArch:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    return v1

    .line 127
    :cond_1
    sget-object v0, Lcom/alipay/mobile/nebula/util/H5DeviceHelper;->sAbi:Ljava/lang/String;

    const-string v2, "exception "

    const-string v3, "H5DeviceHelper"

    const/4 v4, 0x0

    if-nez v0, :cond_2

    .line 129
    :try_start_0
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    sput-object v0, Lcom/alipay/mobile/nebula/util/H5DeviceHelper;->sAbi:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    goto :goto_0

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v3, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 135
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_0
    move-object v0, v4

    :goto_1
    sget-object v5, Lcom/alipay/mobile/nebula/util/H5DeviceHelper;->sAbi:Ljava/lang/String;

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 136
    return v1

    .line 140
    :cond_3
    sget-object v5, Lcom/alipay/mobile/nebula/util/H5DeviceHelper;->sSupportedABIs:[Ljava/lang/String;

    if-nez v5, :cond_4

    .line 141
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v5, v6, :cond_4

    .line 143
    :try_start_1
    const-class v5, Landroid/os/Build;

    const-string v6, "SUPPORTED_ABIS"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 144
    .local v0, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v5, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    check-cast v5, [Ljava/lang/String;

    sput-object v5, Lcom/alipay/mobile/nebula/util/H5DeviceHelper;->sSupportedABIs:[Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 147
    .end local v0    # "field":Ljava/lang/reflect/Field;
    goto :goto_2

    .line 145
    :catch_1
    move-exception v0

    .line 146
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v3, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 150
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_2
    sget-object v2, Lcom/alipay/mobile/nebula/util/H5DeviceHelper;->sSupportedABIs:[Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_6

    array-length v5, v2

    if-lez v5, :cond_6

    aget-object v5, v2, v3

    if-eqz v5, :cond_6

    aget-object v2, v2, v3

    .line 153
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 154
    return v1

    .line 153
    .local v0, "RO_PRODUCT_CPU_ABI":Ljava/lang/String;
    :cond_5
    nop

    .line 161
    :cond_6
    sget-object v2, Lcom/alipay/mobile/nebula/util/H5DeviceHelper;->sCpuAbi:Ljava/lang/String;

    if-nez v2, :cond_7

    .line 162
    const-string/jumbo v2, "ro.product.cpu.abi"

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5DeviceHelper;->getFromSystemProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/alipay/mobile/nebula/util/H5DeviceHelper;->sCpuAbi:Ljava/lang/String;

    .line 164
    :cond_7
    sget-object v2, Lcom/alipay/mobile/nebula/util/H5DeviceHelper;->sCpuAbi:Ljava/lang/String;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 165
    return v1

    .line 169
    :cond_8
    sget-object v2, Lcom/alipay/mobile/nebula/util/H5DeviceHelper;->sAbiList:[Ljava/lang/String;

    if-nez v2, :cond_9

    .line 170
    const-string/jumbo v2, "ro.product.cpu.abilist"

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5DeviceHelper;->getFromSystemProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 171
    .local v4, "abilist":Ljava/lang/String;
    move-object v4, v2

    if-eqz v2, :cond_9

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_9

    .line 172
    const-string v2, ","

    invoke-virtual {v4, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/alipay/mobile/nebula/util/H5DeviceHelper;->sAbiList:[Ljava/lang/String;

    .line 175
    .end local v4    # "abilist":Ljava/lang/String;
    :cond_9
    sget-object v2, Lcom/alipay/mobile/nebula/util/H5DeviceHelper;->sAbiList:[Ljava/lang/String;

    if-eqz v2, :cond_a

    array-length v4, v2

    if-lez v4, :cond_a

    aget-object v4, v2, v3

    if-eqz v4, :cond_a

    aget-object v2, v2, v3

    .line 178
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    return v1

    :cond_a
    nop

    .line 175
    return v3
.end method

.method public static isFoldingScreen()Z
    .locals 8

    .line 256
    const/4 v0, 0x0

    .local v0, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 259
    move-object v0, v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 260
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "#"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 262
    .local v1, "phoneInfo":Ljava/lang/String;
    nop

    .line 263
    const-string v3, "h5_folder_screen_phone"

    invoke-interface {v0, v3}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 264
    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v3

    const/4 v4, 0x0

    .line 265
    .local v4, "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    move-object v4, v3

    if-eqz v3, :cond_1

    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 266
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 267
    invoke-virtual {v4, v3}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 268
    .local v5, "configValue":Ljava/lang/String;
    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 269
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "h5_folder_screen_phone contain phone "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "H5DeviceHelper"

    invoke-static {v7, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    return v2

    .line 266
    .end local v5    # "configValue":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 275
    .end local v1    # "phoneInfo":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    :cond_1
    return v2
.end method

.method private static isX86Device()Z
    .locals 11

    .line 48
    const-string v0, "arm"

    const-string/jumbo v1, "x86"

    const/4 v2, 0x0

    .line 49
    .local v2, "process":Ljava/lang/Process;
    const/4 v3, 0x0

    .line 50
    .local v3, "ir":Ljava/io/InputStreamReader;
    const/4 v4, 0x0

    .line 53
    .local v4, "br":Ljava/io/BufferedReader;
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    const-string v9, "getprop ro.product.cpu.abi"

    invoke-virtual {v8, v9}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v8

    move-object v2, v8

    .line 54
    new-instance v8, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object v3, v8

    .line 55
    new-instance v8, Ljava/io/BufferedReader;

    invoke-direct {v8, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 56
    move-object v4, v8

    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    move-object v9, v5

    .line 57
    .local v9, "abi":Ljava/lang/String;
    move-object v9, v8

    if-eqz v8, :cond_1

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    .line 58
    invoke-virtual {v9, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 59
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    sput-object v8, Lcom/alipay/mobile/nebula/util/H5DeviceHelper;->sIsX86:Ljava/lang/Boolean;

    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 61
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    sput-object v8, Lcom/alipay/mobile/nebula/util/H5DeviceHelper;->sIsX86:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    .end local v9    # "abi":Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 68
    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 69
    if-eqz v2, :cond_2

    .line 70
    goto :goto_1

    .line 64
    :catchall_0
    move-exception v8

    move-object v9, v8

    .line 65
    .local v9, "e":Ljava/lang/Throwable;
    :try_start_1
    const-string v8, "H5DeviceHelper"

    const-string v10, "exception detail"

    invoke-static {v8, v10, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 67
    .end local v9    # "e":Ljava/lang/Throwable;
    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 68
    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 69
    if-eqz v2, :cond_2

    .line 70
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    .line 71
    const/4 v2, 0x0

    .line 76
    :cond_2
    :try_start_2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    const-string v10, "getprop ro.product.cpu.abilist"

    invoke-virtual {v8, v10}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v8

    move-object v2, v8

    .line 77
    new-instance v8, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object v3, v8

    .line 78
    new-instance v8, Ljava/io/BufferedReader;

    invoke-direct {v8, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 79
    move-object v4, v8

    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .line 80
    .local v9, "abilist":Ljava/lang/String;
    move-object v9, v8

    if-eqz v8, :cond_4

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_4

    .line 81
    const-string v8, ","

    invoke-virtual {v9, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 82
    .local v5, "abi":[Ljava/lang/String;
    move-object v5, v8

    aget-object v8, v8, v7

    invoke-virtual {v8, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 83
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/nebula/util/H5DeviceHelper;->sIsX86:Ljava/lang/Boolean;

    goto :goto_2

    .line 84
    .end local v9    # "abilist":Ljava/lang/String;
    :cond_3
    aget-object v8, v5, v7

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 85
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/nebula/util/H5DeviceHelper;->sIsX86:Ljava/lang/Boolean;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 91
    .end local v5    # "abi":[Ljava/lang/String;
    :cond_4
    :goto_2
    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 92
    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 93
    if-eqz v2, :cond_5

    .line 94
    :goto_3
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    goto :goto_4

    .line 88
    :catchall_1
    move-exception v0

    .line 91
    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 92
    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 93
    if-eqz v2, :cond_5

    .line 94
    goto :goto_3

    .line 98
    :cond_5
    :goto_4
    const-string/jumbo v0, "os.arch"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v5, v9

    .line 99
    .local v5, "arch":Ljava/lang/String;
    move-object v5, v0

    if-eqz v0, :cond_6

    invoke-virtual {v5, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_5

    :cond_6
    const/4 v6, 0x0

    :goto_5
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 101
    sput-object v0, Lcom/alipay/mobile/nebula/util/H5DeviceHelper;->sIsX86:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 67
    .end local v5    # "arch":Ljava/lang/String;
    :catchall_2
    move-exception v0

    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 68
    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 69
    if-eqz v2, :cond_7

    .line 70
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    .line 71
    :cond_7
    throw v0
.end method

.method private static isX86DeviceV2()Z
    .locals 2

    .line 105
    const-string/jumbo v0, "x86"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5DeviceHelper;->isArchContains(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/nebula/util/H5DeviceHelper;->sIsX86:Ljava/lang/Boolean;

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isX86DeviceV2 "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/alipay/mobile/nebula/util/H5DeviceHelper;->sIsX86:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5DeviceHelper"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    sget-object v0, Lcom/alipay/mobile/nebula/util/H5DeviceHelper;->sIsX86:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static declared-synchronized x86(I)Z
    .locals 3
    .param p0, "version"    # I

    const-class v0, Lcom/alipay/mobile/nebula/util/H5DeviceHelper;

    monitor-enter v0

    .line 31
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/nebula/util/H5DeviceHelper;->sIsX86:Ljava/lang/Boolean;

    if-nez v1, :cond_1

    .line 32
    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    .line 33
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5DeviceHelper;->isX86Device()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 35
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5DeviceHelper;->isX86DeviceV2()Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return v1

    .line 38
    :cond_1
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return v1

    .line 30
    .end local p0    # "version":I
    :catchall_0
    move-exception p0

    goto :goto_0

    .line 40
    .restart local p0    # "version":I
    :catch_0
    move-exception v1

    .line 41
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v2, "H5DeviceHelper"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 43
    .end local v1    # "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 30
    .end local p0    # "version":I
    :goto_0
    monitor-exit v0

    throw p0
.end method
