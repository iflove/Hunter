.class public Lcom/alipay/mobile/framework/locale/LocaleHelper;
.super Ljava/lang/Object;
.source "LocaleHelper.java"


# static fields
.field public static final CURRENT_LANGUAGE:Ljava/lang/String; = "language"

.field public static final FLAG_CHINA:I = 0x1

.field public static final FLAG_HONGKONG:I = 0x3

.field public static final FLAG_JAPANESE:I = 0x8

.field public static final FLAG_KOREAN:I = 0x6

.field public static final FLAG_RUSSIAN:I = 0xa

.field public static final FLAG_TAIWAN:I = 0x2

.field public static final FLAG_US:I = 0x4

.field public static final LANGUAGE_CHANGE:Ljava/lang/String; = "com.alipay.mobile.language.CHANGE"

.field public static LANGUAGE_UPLOAD:Z = false

.field public static final SPKEY_CHANGE_FLAG:Ljava/lang/String; = "change"

.field public static final SPKEY_CURRENT_LANGUAGE:Ljava/lang/String; = "currentlanguage"

.field public static final SPKEY_UPLOAD_FLAG:Ljava/lang/String; = "uploadflag"

.field private static final a:Ljava/lang/String;

.field public static availableLanguage:[I

.field private static b:Lcom/alipay/mobile/framework/locale/LocaleHelper;

.field private static e:I

.field public static systemLocale:Ljava/util/Locale;


# instance fields
.field private c:Z

.field private d:Landroid/app/Application;

.field private f:Landroid/content/SharedPreferences;

.field private final g:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const-class v0, Lcom/alipay/mobile/framework/locale/LocaleHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/framework/locale/LocaleHelper;->a:Ljava/lang/String;

    .line 49
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/framework/locale/LocaleHelper;->systemLocale:Ljava/util/Locale;

    .line 50
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/alipay/mobile/framework/locale/LocaleHelper;->availableLanguage:[I

    .line 59
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/framework/locale/LocaleHelper;->LANGUAGE_UPLOAD:Z

    .line 62
    const/4 v0, -0x1

    sput v0, Lcom/alipay/mobile/framework/locale/LocaleHelper;->e:I

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
    .end array-data
.end method

.method private constructor <init>()V
    .locals 1

    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 652
    new-instance v0, Lcom/alipay/mobile/framework/locale/LocaleHelper$2;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/framework/locale/LocaleHelper$2;-><init>(Lcom/alipay/mobile/framework/locale/LocaleHelper;)V

    iput-object v0, p0, Lcom/alipay/mobile/framework/locale/LocaleHelper;->g:Landroid/content/BroadcastReceiver;

    .line 327
    return-void
.end method

.method private a(Ljava/util/Locale;)I
    .locals 4
    .param p1, "locale"    # Ljava/util/Locale;

    .line 420
    invoke-direct {p0, p1}, Lcom/alipay/mobile/framework/locale/LocaleHelper;->b(Ljava/util/Locale;)I

    move-result v0

    const/4 v1, 0x0

    .line 421
    .local v1, "result":I
    move v1, v0

    const/16 v2, -0x64

    if-ne v0, v2, :cond_0

    .line 423
    new-instance v0, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "incorrect locale: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 424
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/alipay/mobile/framework/locale/LocaleHelper;->a:Ljava/lang/String;

    const-string v3, "getFlagByLocale"

    invoke-static {v2, v3, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 426
    const/4 v2, -0x1

    return v2

    .line 428
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return v1
.end method

.method private static a()Ljava/util/Locale;
    .locals 2

    .line 244
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-le v0, v1, :cond_0

    sget-object v0, Lcom/alipay/mobile/framework/locale/LocaleHelper;->systemLocale:Ljava/util/Locale;

    if-eqz v0, :cond_0

    .line 245
    return-object v0

    .line 247
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method private a(I)V
    .locals 4
    .param p1, "flag"    # I

    .line 330
    invoke-direct {p0}, Lcom/alipay/mobile/framework/locale/LocaleHelper;->d()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "flag"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 331
    return-void

    .line 333
    :cond_0
    sget-object v0, Lcom/alipay/mobile/framework/locale/LocaleHelper;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "saveLocale "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/framework/locale/LocaleHelper;->d()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    return-void

    .line 338
    :catch_0
    move-exception v0

    .line 339
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/alipay/mobile/framework/locale/LocaleHelper;->a:Ljava/lang/String;

    const-string/jumbo v2, "saveLocale"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 341
    .end local v0    # "e":Ljava/lang/Exception;
    return-void
.end method

.method private a(Z)V
    .locals 8
    .param p1, "needRefresh"    # Z

    .line 99
    invoke-direct {p0}, Lcom/alipay/mobile/framework/locale/LocaleHelper;->c()I

    move-result v0

    .line 101
    .local v0, "flag":I
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/locale/LocaleHelper;->getLocaleDesByFlag(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/framework/locale/LocaleHelper;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    sget-object v1, Lcom/alipay/mobile/framework/locale/LocaleHelper;->a:Ljava/lang/String;

    const-string v2, "isCurrentInBlacklist\uff01"

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const/4 v0, 0x4

    .line 104
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/alipay/mobile/framework/locale/LocaleHelper;->a(I)V

    .line 106
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/locale/LocaleHelper;->getCurrentLanguage()I

    move-result v1

    sput v1, Lcom/alipay/mobile/framework/locale/LocaleHelper;->e:I

    .line 107
    sget-object v1, Lcom/alipay/mobile/framework/locale/LocaleHelper;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "flag = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "currentLanguage = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/alipay/mobile/framework/locale/LocaleHelper;->e:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    sget v1, Lcom/alipay/mobile/framework/locale/LocaleHelper;->e:I

    if-eq v1, v0, :cond_1

    .line 110
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/framework/locale/LocaleHelper;->setUploadLocaleFlag(Z)V

    .line 111
    invoke-direct {p0, v0}, Lcom/alipay/mobile/framework/locale/LocaleHelper;->b(I)V

    .line 113
    :cond_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move v3, v0

    move v7, p1

    invoke-virtual/range {v2 .. v7}, Lcom/alipay/mobile/framework/locale/LocaleHelper;->setNewLocale(ILandroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Z)Z

    .line 114
    return-void
.end method

.method private a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "localeSetting"    # Landroid/app/Activity;
    .param p2, "appId"    # Ljava/lang/String;
    .param p3, "bundle"    # Landroid/os/Bundle;

    .line 589
    iget-boolean v0, p0, Lcom/alipay/mobile/framework/locale/LocaleHelper;->c:Z

    if-nez v0, :cond_0

    .line 590
    const/4 v0, 0x0

    return v0

    .line 593
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/alipay/mobile/framework/locale/LocaleUtils;->refreshHomeActivity(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 5
    .param p1, "currentDes"    # Ljava/lang/String;

    .line 602
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 603
    return v0

    .line 605
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/framework/locale/LocaleHelper;->e()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 606
    .local v2, "list":[Ljava/lang/String;
    move-object v2, v1

    if-nez v1, :cond_1

    .line 607
    return v0

    .line 609
    :cond_1
    array-length v1, v2

    .line 610
    .local v1, "len":I
    if-eqz v2, :cond_5

    if-nez v1, :cond_2

    goto :goto_1

    .line 613
    :cond_2
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_4

    .line 614
    aget-object v4, v2, v3

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 615
    const/4 v0, 0x1

    return v0

    .line 613
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 618
    .end local v3    # "i":I
    :cond_4
    return v0

    .line 611
    :cond_5
    :goto_1
    return v0
.end method

.method static synthetic access$000(Lcom/alipay/mobile/framework/locale/LocaleHelper;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/framework/locale/LocaleHelper;

    .line 25
    iget-object v0, p0, Lcom/alipay/mobile/framework/locale/LocaleHelper;->g:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/framework/locale/LocaleHelper;)Landroid/app/Application;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/framework/locale/LocaleHelper;

    .line 25
    iget-object v0, p0, Lcom/alipay/mobile/framework/locale/LocaleHelper;->d:Landroid/app/Application;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 25
    sget-object v0, Lcom/alipay/mobile/framework/locale/LocaleHelper;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/framework/locale/LocaleHelper;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/framework/locale/LocaleHelper;
    .param p1, "x1"    # Z

    .line 25
    invoke-direct {p0, p1}, Lcom/alipay/mobile/framework/locale/LocaleHelper;->a(Z)V

    return-void
.end method

.method private b(Ljava/util/Locale;)I
    .locals 4
    .param p1, "locale"    # Ljava/util/Locale;

    .line 434
    if-nez p1, :cond_0

    .line 435
    const/4 v0, -0x1

    return v0

    .line 438
    :cond_0
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {p0, v0, p1}, Lcom/alipay/mobile/framework/locale/LocaleHelper;->equalsLocale(Ljava/util/Locale;Ljava/util/Locale;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 439
    const/4 v0, 0x1

    return v0

    .line 442
    :cond_1
    sget-object v0, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    invoke-virtual {p0, v0, p1}, Lcom/alipay/mobile/framework/locale/LocaleHelper;->equalsLocale(Ljava/util/Locale;Ljava/util/Locale;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_2

    .line 443
    return v1

    .line 446
    :cond_2
    new-instance v0, Ljava/util/Locale;

    const-string/jumbo v2, "zh"

    const-string v3, "HK"

    invoke-direct {v0, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    .local v0, "HONGKONG":Ljava/util/Locale;
    invoke-virtual {p0, v0, p1}, Lcom/alipay/mobile/framework/locale/LocaleHelper;->equalsLocale(Ljava/util/Locale;Ljava/util/Locale;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 449
    const/4 v1, 0x3

    return v1

    .line 453
    :cond_3
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MO"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 454
    return v1

    .line 457
    :cond_4
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 459
    .local v1, "language":Ljava/lang/String;
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 460
    const/4 v2, 0x4

    return v2

    .line 485
    :cond_5
    new-instance v2, Ljava/util/Locale;

    const-string/jumbo v3, "ru"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 486
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 487
    const/16 v2, 0xa

    return v2

    .line 498
    :cond_6
    const/16 v2, -0x64

    return v2
.end method

.method private b()V
    .locals 3

    .line 345
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/framework/locale/LocaleHelper;->d()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "change"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 346
    sget-object v0, Lcom/alipay/mobile/framework/locale/LocaleHelper;->a:Ljava/lang/String;

    const-string/jumbo v1, "setChangeLocaleFlag 1"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    return-void

    .line 347
    :catch_0
    move-exception v0

    .line 348
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/alipay/mobile/framework/locale/LocaleHelper;->a:Ljava/lang/String;

    const-string/jumbo v2, "setChangeLocaleFlag"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 350
    .end local v0    # "e":Ljava/lang/Exception;
    return-void
.end method

.method private b(I)V
    .locals 3
    .param p1, "flag"    # I

    .line 364
    sget-object v0, Lcom/alipay/mobile/framework/locale/LocaleHelper;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setCurrentLanguage "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/framework/locale/LocaleHelper;->d()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "currentlanguage"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    return-void

    .line 369
    :catch_0
    move-exception v0

    .line 370
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/alipay/mobile/framework/locale/LocaleHelper;->a:Ljava/lang/String;

    const-string/jumbo v2, "setCurrentLanguage"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 372
    .end local v0    # "e":Ljava/lang/Exception;
    return-void
.end method

.method private c()I
    .locals 5

    .line 389
    const/4 v0, -0x1

    .line 392
    .local v0, "flag":I
    const/4 v1, -0x1

    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/framework/locale/LocaleHelper;->d()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "flag"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 395
    goto :goto_0

    .line 393
    :catch_0
    move-exception v2

    .line 394
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/alipay/mobile/framework/locale/LocaleHelper;->a:Ljava/lang/String;

    const-string v4, "getSavedLocaleFlag"

    invoke-static {v3, v4, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 398
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    if-ne v0, v1, :cond_0

    .line 399
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/locale/LocaleHelper;->getAvailableLocaleFlag()I

    move-result v0

    .line 402
    :cond_0
    sget-object v1, Lcom/alipay/mobile/framework/locale/LocaleHelper;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getSavedLocaleFlag "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    return v0
.end method

.method private c(Ljava/util/Locale;)I
    .locals 4
    .param p1, "locale"    # Ljava/util/Locale;

    .line 502
    invoke-direct {p0, p1}, Lcom/alipay/mobile/framework/locale/LocaleHelper;->b(Ljava/util/Locale;)I

    move-result v0

    const/4 v1, 0x0

    .line 503
    .local v1, "result":I
    move v1, v0

    const/16 v2, -0x64

    if-ne v0, v2, :cond_0

    .line 505
    new-instance v0, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "incorrect locale: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 506
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/alipay/mobile/framework/locale/LocaleHelper;->a:Ljava/lang/String;

    const-string v3, "getAvailableFlagByLocale"

    invoke-static {v2, v3, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 508
    const/4 v2, 0x4

    return v2

    .line 510
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return v1
.end method

.method private static c(I)Ljava/util/Locale;
    .locals 4
    .param p0, "flag"    # I

    .line 514
    const/4 v0, 0x0

    if-gez p0, :cond_0

    .line 515
    return-object v0

    .line 518
    :cond_0
    const/4 v1, 0x1

    if-eq p0, v1, :cond_4

    const/4 v1, 0x2

    if-eq p0, v1, :cond_3

    const/4 v1, 0x3

    if-eq p0, v1, :cond_2

    const/4 v1, 0x4

    if-eq p0, v1, :cond_1

    .line 557
    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "incorrect flag: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 558
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/alipay/mobile/framework/locale/LocaleHelper;->a:Ljava/lang/String;

    const-string v3, "getLocaleByFlag"

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 560
    return-object v0

    .line 530
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    return-object v0

    .line 527
    :cond_2
    new-instance v0, Ljava/util/Locale;

    const-string/jumbo v1, "zh"

    const-string v2, "HK"

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 524
    :cond_3
    sget-object v0, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    return-object v0

    .line 521
    :cond_4
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    return-object v0
.end method

.method private d()Landroid/content/SharedPreferences;
    .locals 3

    .line 408
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/locale/LocaleHelper;->f:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/alipay/mobile/framework/locale/LocaleHelper;->d:Landroid/app/Application;

    const-string v1, "locale"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/locale/LocaleHelper;->f:Landroid/content/SharedPreferences;

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/locale/LocaleHelper;->f:Landroid/content/SharedPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 413
    :catchall_0
    move-exception v0

    .line 414
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/alipay/mobile/framework/locale/LocaleHelper;->a:Ljava/lang/String;

    const-string v2, "getPreference"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 415
    const/4 v1, 0x0

    return-object v1
.end method

.method private d(Ljava/util/Locale;)V
    .locals 7
    .param p1, "locale"    # Ljava/util/Locale;

    const-string/jumbo v0, "setLocaleToResource"

    .line 566
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/framework/locale/LocaleHelper;->d:Landroid/app/Application;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "setLocaleToApplicationResources"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/util/Locale;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    .line 569
    .local v2, "method":Ljava/lang/reflect/Method;
    move-object v2, v1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 570
    iget-object v1, p0, Lcom/alipay/mobile/framework/locale/LocaleHelper;->d:Landroid/app/Application;

    new-array v4, v3, [Ljava/lang/Object;

    aput-object p1, v4, v6

    invoke-virtual {v2, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    iget-object v1, p0, Lcom/alipay/mobile/framework/locale/LocaleHelper;->d:Landroid/app/Application;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v4, "clearCachedBundleResources"

    new-array v5, v6, [Ljava/lang/Class;

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 575
    move-object v2, v1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 576
    iget-object v1, p0, Lcom/alipay/mobile/framework/locale/LocaleHelper;->d:Landroid/app/Application;

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    sget-object v1, Lcom/alipay/mobile/framework/locale/LocaleHelper;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 582
    .end local v2    # "method":Ljava/lang/reflect/Method;
    return-void

    .line 580
    :catch_0
    move-exception v1

    .line 581
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/alipay/mobile/framework/locale/LocaleHelper;->a:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 583
    .end local v1    # "e":Ljava/lang/Exception;
    return-void
.end method

.method private e()[Ljava/lang/String;
    .locals 6

    .line 627
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/framework/locale/LocaleHelper;->d:Landroid/app/Application;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    move-object v2, v0

    .line 628
    .local v2, "sp":Landroid/content/SharedPreferences;
    const-string v3, "localeBlacklist"

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 629
    .local v1, "val":Ljava/lang/String;
    sget-object v3, Lcom/alipay/mobile/framework/locale/LocaleHelper;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "localeBlacklist = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 631
    return-object v0

    .line 633
    :cond_0
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 634
    return-object v0

    .line 635
    .end local v1    # "val":Ljava/lang/String;
    .end local v2    # "sp":Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v1

    .line 636
    .local v1, "e":Ljava/lang/Throwable;
    sget-object v2, Lcom/alipay/mobile/framework/locale/LocaleHelper;->a:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 638
    .end local v1    # "e":Ljava/lang/Throwable;
    return-object v0
.end method

.method private f()V
    .locals 4

    .line 642
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/alipay/mobile/framework/locale/LocaleHelper$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/framework/locale/LocaleHelper$1;-><init>(Lcom/alipay/mobile/framework/locale/LocaleHelper;)V

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 650
    return-void
.end method

.method public static getInstance()Lcom/alipay/mobile/framework/locale/LocaleHelper;
    .locals 2

    .line 70
    sget-object v0, Lcom/alipay/mobile/framework/locale/LocaleHelper;->b:Lcom/alipay/mobile/framework/locale/LocaleHelper;

    if-nez v0, :cond_1

    .line 72
    const-class v0, Lcom/alipay/mobile/framework/locale/LocaleHelper;

    monitor-enter v0

    .line 73
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/framework/locale/LocaleHelper;->b:Lcom/alipay/mobile/framework/locale/LocaleHelper;

    if-nez v1, :cond_0

    .line 74
    new-instance v1, Lcom/alipay/mobile/framework/locale/LocaleHelper;

    invoke-direct {v1}, Lcom/alipay/mobile/framework/locale/LocaleHelper;-><init>()V

    sput-object v1, Lcom/alipay/mobile/framework/locale/LocaleHelper;->b:Lcom/alipay/mobile/framework/locale/LocaleHelper;

    .line 76
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 79
    :cond_1
    :goto_0
    sget-object v0, Lcom/alipay/mobile/framework/locale/LocaleHelper;->b:Lcom/alipay/mobile/framework/locale/LocaleHelper;

    return-object v0
.end method


# virtual methods
.method public equalsLocale(Ljava/util/Locale;Ljava/util/Locale;)Z
    .locals 3
    .param p1, "l1"    # Ljava/util/Locale;
    .param p2, "l2"    # Ljava/util/Locale;

    .line 227
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-le v0, v1, :cond_3

    .line 228
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 231
    :cond_0
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 232
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    nop

    .line 231
    return v0

    .line 229
    :cond_2
    :goto_0
    return v0

    .line 234
    :cond_3
    invoke-virtual {p1, p2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getAlipayLocaleDes()Ljava/lang/String;
    .locals 2

    .line 120
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/locale/LocaleHelper;->getAlipayLocaleFlag()I

    move-result v0

    .line 121
    .local v0, "flag":I
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/locale/LocaleHelper;->getLocaleDesByFlag(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getAlipayLocaleFlag()I
    .locals 3

    .line 191
    nop

    .line 194
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/locale/LocaleHelper;->d:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    goto :goto_0

    .line 196
    :catch_0
    move-exception v0

    .line 197
    sget-object v1, Lcom/alipay/mobile/framework/locale/LocaleHelper;->a:Ljava/lang/String;

    const-string v2, "getAlipayLocaleFlag"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    .line 200
    :goto_0
    invoke-direct {p0, v0}, Lcom/alipay/mobile/framework/locale/LocaleHelper;->a(Ljava/util/Locale;)I

    move-result v0

    .line 202
    return v0
.end method

.method public getAvailableLocaleFlag()I
    .locals 5

    .line 217
    invoke-static {}, Lcom/alipay/mobile/framework/locale/LocaleHelper;->a()Ljava/util/Locale;

    move-result-object v0

    .line 218
    .local v0, "locale":Ljava/util/Locale;
    sget-object v1, Lcom/alipay/mobile/framework/locale/LocaleHelper;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getSystemLocale(): "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-direct {p0, v0}, Lcom/alipay/mobile/framework/locale/LocaleHelper;->c(Ljava/util/Locale;)I

    move-result v2

    .line 222
    .local v2, "flag":I
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getAvailableFlagByLocale: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    return v2
.end method

.method public getAvailableLocaleFlagList()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 126
    .local v0, "list":Ljava/util/ArrayList;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lcom/alipay/mobile/framework/locale/LocaleHelper;->availableLanguage:[I

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 127
    aget v2, v2, v1

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/framework/locale/LocaleHelper;->getLocaleDesByFlag(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/alipay/mobile/framework/locale/LocaleHelper;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 128
    sget-object v2, Lcom/alipay/mobile/framework/locale/LocaleHelper;->availableLanguage:[I

    aget v2, v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 131
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method public getCurrentLanguage()I
    .locals 3

    .line 381
    invoke-direct {p0}, Lcom/alipay/mobile/framework/locale/LocaleHelper;->d()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "currentlanguage"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLocaleDesByFlag(I)Ljava/lang/String;
    .locals 2
    .param p1, "flag"    # I

    .line 140
    const/4 v0, 0x0

    .line 141
    .local v0, "des":Ljava/lang/String;
    const/4 v1, -0x1

    if-eq p1, v1, :cond_4

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 152
    :cond_0
    const-string v0, "en"

    .line 153
    goto :goto_0

    .line 149
    :cond_1
    const-string/jumbo v0, "zh-HK"

    .line 150
    goto :goto_0

    .line 146
    :cond_2
    const-string/jumbo v0, "zh-Hant"

    .line 147
    goto :goto_0

    .line 143
    :cond_3
    const-string/jumbo v0, "zh-Hans"

    .line 144
    goto :goto_0

    .line 179
    :cond_4
    const-string v0, "en"

    .line 184
    :goto_0
    return-object v0
.end method

.method public getLocaleFlagByDes(Ljava/lang/String;)I
    .locals 1
    .param p1, "des"    # Ljava/lang/String;

    .line 136
    const/4 v0, 0x4

    return v0
.end method

.method public getSystemLocaleFlag()I
    .locals 5

    .line 209
    invoke-static {}, Lcom/alipay/mobile/framework/locale/LocaleHelper;->a()Ljava/util/Locale;

    move-result-object v0

    .line 210
    .local v0, "locale":Ljava/util/Locale;
    invoke-direct {p0, v0}, Lcom/alipay/mobile/framework/locale/LocaleHelper;->a(Ljava/util/Locale;)I

    move-result v1

    .line 212
    .local v1, "flag":I
    sget-object v2, Lcom/alipay/mobile/framework/locale/LocaleHelper;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getSystemLocaleFlag: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    return v1
.end method

.method public getUploadLocaleFlag()Z
    .locals 4

    .line 375
    invoke-direct {p0}, Lcom/alipay/mobile/framework/locale/LocaleHelper;->d()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "uploadflag"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 376
    .local v0, "uploadFlag":Z
    sget-object v1, Lcom/alipay/mobile/framework/locale/LocaleHelper;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setCurrentLanguage "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    return v0
.end method

.method public initSavedLocale(Landroid/app/Application;)V
    .locals 3
    .param p1, "application"    # Landroid/app/Application;

    .line 86
    iget-boolean v0, p0, Lcom/alipay/mobile/framework/locale/LocaleHelper;->c:Z

    if-eqz v0, :cond_0

    .line 87
    return-void

    .line 90
    :cond_0
    sget-object v0, Lcom/alipay/mobile/framework/locale/LocaleHelper;->a:Ljava/lang/String;

    const-string v1, "initSavedLocale start"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iput-object p1, p0, Lcom/alipay/mobile/framework/locale/LocaleHelper;->d:Landroid/app/Application;

    .line 92
    invoke-direct {p0}, Lcom/alipay/mobile/framework/locale/LocaleHelper;->f()V

    .line 93
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/framework/locale/LocaleHelper;->a(Z)V

    .line 94
    const-string v2, "initSavedLocale end"

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iput-boolean v1, p0, Lcom/alipay/mobile/framework/locale/LocaleHelper;->c:Z

    .line 96
    return-void
.end method

.method public setNewLocale(ILandroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 6
    .param p1, "localeFlag"    # I
    .param p2, "localeSetting"    # Landroid/app/Activity;
    .param p3, "appId"    # Ljava/lang/String;
    .param p4, "bundle"    # Landroid/os/Bundle;

    .line 263
    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/framework/locale/LocaleHelper;->setNewLocale(ILandroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Z)Z

    move-result v0

    return v0
.end method

.method public setNewLocale(ILandroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Z)Z
    .locals 6
    .param p1, "localeFlag"    # I
    .param p2, "localeSetting"    # Landroid/app/Activity;
    .param p3, "appId"    # Ljava/lang/String;
    .param p4, "bundle"    # Landroid/os/Bundle;
    .param p5, "needRefresh"    # Z

    .line 282
    const/4 v0, 0x0

    .line 284
    .local v0, "isRefresh":Z
    const/4 v1, 0x0

    if-gez p1, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/locale/LocaleHelper;->getSystemLocaleFlag()I

    move-result v2

    if-gez v2, :cond_0

    .line 285
    return v1

    .line 288
    :cond_0
    sget-object v2, Lcom/alipay/mobile/framework/locale/LocaleHelper;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "setNewLocale "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/locale/LocaleHelper;->getAlipayLocaleFlag()I

    move-result v2

    .line 292
    .local v2, "alipayFlag":I
    if-nez p2, :cond_1

    if-nez p3, :cond_1

    if-eqz p4, :cond_2

    .line 293
    :cond_1
    invoke-direct {p0, p1}, Lcom/alipay/mobile/framework/locale/LocaleHelper;->a(I)V

    .line 296
    :cond_2
    if-ne p1, v2, :cond_3

    .line 297
    return v1

    .line 300
    :cond_3
    invoke-static {p1}, Lcom/alipay/mobile/framework/locale/LocaleHelper;->c(I)Ljava/util/Locale;

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, v4

    .line 302
    .local v5, "locale":Ljava/util/Locale;
    move-object v5, v3

    if-nez v3, :cond_4

    .line 303
    return v1

    .line 306
    :cond_4
    invoke-direct {p0, p1}, Lcom/alipay/mobile/framework/locale/LocaleHelper;->b(I)V

    .line 307
    invoke-direct {p0}, Lcom/alipay/mobile/framework/locale/LocaleHelper;->b()V

    .line 309
    if-eqz p5, :cond_5

    .line 310
    invoke-direct {p0, p2, p3, p4}, Lcom/alipay/mobile/framework/locale/LocaleHelper;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    .line 315
    :cond_5
    invoke-direct {p0, v5}, Lcom/alipay/mobile/framework/locale/LocaleHelper;->d(Ljava/util/Locale;)V

    .line 316
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    move-object v3, v4

    .line 317
    .local v3, "intent":Landroid/content/Intent;
    move-object v3, v1

    const-string v4, "com.alipay.mobile.language.CHANGE"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 318
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/locale/LocaleHelper;->getAlipayLocaleDes()Ljava/lang/String;

    move-result-object v1

    const-string v4, "language"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 319
    iget-object v1, p0, Lcom/alipay/mobile/framework/locale/LocaleHelper;->d:Landroid/app/Application;

    if-eqz v1, :cond_6

    .line 320
    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 322
    :cond_6
    iget-object v1, p0, Lcom/alipay/mobile/framework/locale/LocaleHelper;->d:Landroid/app/Application;

    invoke-virtual {v1, v3}, Landroid/app/Application;->sendBroadcast(Landroid/content/Intent;)V

    .line 323
    return v0
.end method

.method public setUploadLocaleFlag(Z)V
    .locals 3
    .param p1, "flag"    # Z

    .line 353
    sget-object v0, Lcom/alipay/mobile/framework/locale/LocaleHelper;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setUploadLocaleFlag "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/framework/locale/LocaleHelper;->d()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "uploadflag"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    return-void

    .line 358
    :catch_0
    move-exception v0

    .line 359
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/alipay/mobile/framework/locale/LocaleHelper;->a:Ljava/lang/String;

    const-string/jumbo v2, "setUploadLocaleFlag"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 361
    .end local v0    # "e":Ljava/lang/Exception;
    return-void
.end method
