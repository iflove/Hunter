.class public Lcom/alipay/mobile/common/logging/DevicePropertyImpl;
.super Ljava/lang/Object;
.source "DevicePropertyImpl.java"

# interfaces
.implements Lcom/alipay/mobile/common/logging/api/DeviceProperty;


# static fields
.field private static final UNKNOWN:Ljava/lang/String; = "unknown"


# instance fields
.field private mBoardPlatform:Ljava/lang/String;

.field private mBrandName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDeviceAlias:Ljava/lang/String;

.field private mDisplayID:Ljava/lang/String;

.field private mFingerPrint:Ljava/lang/String;

.field private mHardwareName:Ljava/lang/String;

.field private mManufacturer:Ljava/lang/String;

.field private mRomVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->mContext:Landroid/content/Context;

    .line 30
    return-void
.end method


# virtual methods
.method public getBoardPlatform()Ljava/lang/String;
    .locals 2

    .line 377
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->mBoardPlatform:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 380
    :try_start_0
    const-string/jumbo v0, "ro.board.platform"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->mBoardPlatform:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 383
    goto :goto_0

    .line 381
    :catchall_0
    move-exception v0

    .line 384
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->mBoardPlatform:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    const-string/jumbo v0, "unknown"

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->mBoardPlatform:Ljava/lang/String;

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->mBoardPlatform:Ljava/lang/String;

    return-object v0
.end method

.method public getBrandName()Ljava/lang/String;
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->mBrandName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 316
    :try_start_0
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->mBrandName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 319
    goto :goto_0

    .line 317
    :catchall_0
    move-exception v0

    .line 320
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->mBrandName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    const-string/jumbo v0, "unknown"

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->mBrandName:Ljava/lang/String;

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->mBrandName:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceAlias()Ljava/lang/String;
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->mDeviceAlias:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 218
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->isXiaomiDevice()Z

    move-result v0

    if-nez v0, :cond_0

    .line 219
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->isVivoDevice()Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->isOppoDevice()Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->isHuaweiDevice()Z

    move-result v0

    if-nez v0, :cond_0

    .line 222
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->isLeEcoDevice()Z

    move-result v0

    if-nez v0, :cond_0

    .line 223
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->isQikuDevice()Z

    move-result v0

    if-nez v0, :cond_0

    .line 224
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->isZteDevice()Z

    move-result v0

    if-nez v0, :cond_0

    .line 225
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->isOnePlusDevice()Z

    move-result v0

    if-nez v0, :cond_0

    .line 226
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->isNubiaDevice()Z

    move-result v0

    if-nez v0, :cond_0

    .line 227
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->isCoolpadDevice()Z

    move-result v0

    if-nez v0, :cond_0

    .line 228
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->isLenovoDevice()Z

    move-result v0

    if-nez v0, :cond_0

    .line 229
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->isMeizuDevice()Z

    move-result v0

    if-nez v0, :cond_0

    .line 230
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->isSamsungDevice()Z

    move-result v0

    if-nez v0, :cond_0

    .line 232
    const-string/jumbo v0, "unknown"

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->mDeviceAlias:Ljava/lang/String;

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->mDeviceAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayID()Ljava/lang/String;
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->mDisplayID:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 332
    :try_start_0
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->mDisplayID:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    goto :goto_0

    .line 333
    :catchall_0
    move-exception v0

    .line 336
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->mDisplayID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    const-string/jumbo v0, "unknown"

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->mDisplayID:Ljava/lang/String;

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->mDisplayID:Ljava/lang/String;

    return-object v0
.end method

.method public getFingerPrint()Ljava/lang/String;
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->mFingerPrint:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 348
    :try_start_0
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->mFingerPrint:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 351
    goto :goto_0

    .line 349
    :catchall_0
    move-exception v0

    .line 352
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->mFingerPrint:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    const-string/jumbo v0, "unknown"

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->mFingerPrint:Ljava/lang/String;

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->mFingerPrint:Ljava/lang/String;

    return-object v0
.end method

.method public getHardwareName()Ljava/lang/String;
    .locals 1

    .line 361
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->mHardwareName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 364
    :try_start_0
    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->mHardwareName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 367
    goto :goto_0

    .line 365
    :catchall_0
    move-exception v0

    .line 368
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->mHardwareName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    const-string/jumbo v0, "unknown"

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->mHardwareName:Ljava/lang/String;

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->mHardwareName:Ljava/lang/String;

    return-object v0
.end method

.method public getManufacturer()Ljava/lang/String;
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->mManufacturer:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 300
    :try_start_0
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->mManufacturer:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    goto :goto_0

    .line 301
    :catchall_0
    move-exception v0

    .line 304
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->mManufacturer:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    const-string/jumbo v0, "unknown"

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->mManufacturer:Ljava/lang/String;

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->mManufacturer:Ljava/lang/String;

    return-object v0
.end method

.method public getRomVersion()Ljava/lang/String;
    .locals 2

    .line 240
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->mRomVersion:Ljava/lang/String;

    if-nez v0, :cond_b

    .line 242
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->isXiaomiDevice()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 243
    const-string/jumbo v0, "ro.build.version.incremental"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->mRomVersion:Ljava/lang/String;

    goto/16 :goto_0

    .line 245
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->isVivoDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 246
    const-string/jumbo v0, "ro.vivo.os.build.display.id"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->mRomVersion:Ljava/lang/String;

    goto/16 :goto_0

    .line 248
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->isOppoDevice()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 249
    const-string/jumbo v0, "ro.build.version.opporom"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->mRomVersion:Ljava/lang/String;

    goto/16 :goto_0

    .line 251
    :cond_2
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->isHuaweiDevice()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 252
    const-string/jumbo v0, "ro.build.version.emui"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->mRomVersion:Ljava/lang/String;

    goto :goto_0

    .line 254
    :cond_3
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->isLeEcoDevice()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 255
    const-string/jumbo v0, "ro.letv.release.version"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->mRomVersion:Ljava/lang/String;

    goto :goto_0

    .line 257
    :cond_4
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->isQikuDevice()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 258
    const-string/jumbo v0, "ro.build.uiversion"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->mRomVersion:Ljava/lang/String;

    goto :goto_0

    .line 260
    :cond_5
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->isZteDevice()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 261
    const-string/jumbo v0, "ro.build.MiFavor_version"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->mRomVersion:Ljava/lang/String;

    goto :goto_0

    .line 263
    :cond_6
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->isOnePlusDevice()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 264
    const-string/jumbo v0, "ro.rom.version"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->mRomVersion:Ljava/lang/String;

    goto :goto_0

    .line 266
    :cond_7
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->isNubiaDevice()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 267
    const-string/jumbo v0, "ro.build.rom.id"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->mRomVersion:Ljava/lang/String;

    goto :goto_0

    .line 269
    :cond_8
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->isCoolpadDevice()Z

    move-result v0

    if-nez v0, :cond_9

    .line 272
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->isLenovoDevice()Z

    move-result v0

    if-nez v0, :cond_9

    .line 275
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->isMeizuDevice()Z

    move-result v0

    if-nez v0, :cond_9

    .line 278
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->isSamsungDevice()Z

    .line 282
    :cond_9
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->mRomVersion:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 283
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->getDisplayID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->mRomVersion:Ljava/lang/String;

    .line 285
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 286
    const-string/jumbo v0, "unknown"

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->mRomVersion:Ljava/lang/String;

    .line 290
    :cond_a
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->mRomVersion:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->mRomVersion:Ljava/lang/String;

    .line 292
    :cond_b
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->mRomVersion:Ljava/lang/String;

    return-object v0
.end method

.method public isCoolpadDevice()Z
    .locals 3

    .line 160
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->mDeviceAlias:Ljava/lang/String;

    const-string v1, "coolpad"

    if-nez v0, :cond_1

    .line 162
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->getBrandName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->getManufacturer()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "yulong"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    :cond_0
    iput-object v1, p0, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->mDeviceAlias:Ljava/lang/String;

    .line 166
    const/4 v0, 0x1

    return v0

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->mDeviceAlias:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isHuaweiDevice()Z
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->mDeviceAlias:Ljava/lang/String;

    const-string v1, "huawei"

    if-nez v0, :cond_1

    .line 78
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->getBrandName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->getManufacturer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    :cond_0
    iput-object v1, p0, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->mDeviceAlias:Ljava/lang/String;

    .line 82
    const/4 v0, 0x1

    return v0

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->mDeviceAlias:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isLeEcoDevice()Z
    .locals 3

    .line 90
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->mDeviceAlias:Ljava/lang/String;

    const-string v1, "leeco"

    if-nez v0, :cond_1

    .line 92
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->getBrandName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->getManufacturer()Ljava/lang/String;

    move-result-object v0

    const-string v2, "lemobile"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    :cond_0
    iput-object v1, p0, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->mDeviceAlias:Ljava/lang/String;

    .line 96
    const/4 v0, 0x1

    return v0

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->mDeviceAlias:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isLenovoDevice()Z
    .locals 2

    .line 174
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->mDeviceAlias:Ljava/lang/String;

    const-string v1, "lenovo"

    if-nez v0, :cond_1

    .line 176
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->getBrandName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->getManufacturer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    :cond_0
    iput-object v1, p0, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->mDeviceAlias:Ljava/lang/String;

    .line 180
    const/4 v0, 0x1

    return v0

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->mDeviceAlias:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isMeizuDevice()Z
    .locals 2

    .line 188
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->mDeviceAlias:Ljava/lang/String;

    const-string/jumbo v1, "meizu"

    if-nez v0, :cond_1

    .line 190
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->getBrandName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->getManufacturer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 193
    :cond_0
    iput-object v1, p0, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->mDeviceAlias:Ljava/lang/String;

    .line 194
    const/4 v0, 0x1

    return v0

    .line 197
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->mDeviceAlias:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isNubiaDevice()Z
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->mDeviceAlias:Ljava/lang/String;

    const-string/jumbo v1, "nubia"

    if-nez v0, :cond_1

    .line 148
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->getBrandName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->getManufacturer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    :cond_0
    iput-object v1, p0, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->mDeviceAlias:Ljava/lang/String;

    .line 152
    const/4 v0, 0x1

    return v0

    .line 155
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->mDeviceAlias:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isOnePlusDevice()Z
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->mDeviceAlias:Ljava/lang/String;

    const-string/jumbo v1, "oneplus"

    if-nez v0, :cond_1

    .line 134
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->getBrandName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->getManufacturer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    :cond_0
    iput-object v1, p0, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->mDeviceAlias:Ljava/lang/String;

    .line 138
    const/4 v0, 0x1

    return v0

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->mDeviceAlias:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isOppoDevice()Z
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->mDeviceAlias:Ljava/lang/String;

    const-string/jumbo v1, "oppo"

    if-nez v0, :cond_1

    .line 64
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->getBrandName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->getManufacturer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    :cond_0
    iput-object v1, p0, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->mDeviceAlias:Ljava/lang/String;

    .line 68
    const/4 v0, 0x1

    return v0

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->mDeviceAlias:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isQikuDevice()Z
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->mDeviceAlias:Ljava/lang/String;

    const-string/jumbo v1, "qiku"

    if-nez v0, :cond_1

    .line 106
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->getBrandName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->getManufacturer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    :cond_0
    iput-object v1, p0, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->mDeviceAlias:Ljava/lang/String;

    .line 110
    const/4 v0, 0x1

    return v0

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->mDeviceAlias:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSamsungDevice()Z
    .locals 2

    .line 202
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->mDeviceAlias:Ljava/lang/String;

    const-string/jumbo v1, "samsung"

    if-nez v0, :cond_1

    .line 204
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->getBrandName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 205
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->getManufacturer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 207
    :cond_0
    iput-object v1, p0, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->mDeviceAlias:Ljava/lang/String;

    .line 208
    const/4 v0, 0x1

    return v0

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->mDeviceAlias:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isVivoDevice()Z
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->mDeviceAlias:Ljava/lang/String;

    const-string/jumbo v1, "vivo"

    if-nez v0, :cond_1

    .line 50
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->getBrandName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->getManufacturer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    :cond_0
    iput-object v1, p0, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->mDeviceAlias:Ljava/lang/String;

    .line 54
    const/4 v0, 0x1

    return v0

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->mDeviceAlias:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isXiaomiDevice()Z
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->mDeviceAlias:Ljava/lang/String;

    const-string/jumbo v1, "xiaomi"

    if-nez v0, :cond_1

    .line 36
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->getBrandName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 37
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->getManufacturer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    :cond_0
    iput-object v1, p0, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->mDeviceAlias:Ljava/lang/String;

    .line 40
    const/4 v0, 0x1

    return v0

    .line 43
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->mDeviceAlias:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isZteDevice()Z
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->mDeviceAlias:Ljava/lang/String;

    const-string/jumbo v1, "zte"

    if-nez v0, :cond_1

    .line 120
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->getBrandName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->getManufacturer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    :cond_0
    iput-object v1, p0, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->mDeviceAlias:Ljava/lang/String;

    .line 124
    const/4 v0, 0x1

    return v0

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/DevicePropertyImpl;->mDeviceAlias:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
