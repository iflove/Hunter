.class public Lcom/alipay/mobile/nebulacore/api/UCInitPolicy;
.super Ljava/lang/Object;
.source "UCInitPolicy.java"


# static fields
.field private static final EXPIRY_TIME:J

.field private static final TAG:Ljava/lang/String; = "UCInitPolicy"

.field private static final UCINIT_POLICY_EXPIRY:Ljava/lang/String; = "UCINIT_POLICY_EXPIRY"

.field private static final UCINIT_POLICY_LPID:Ljava/lang/String; = "UCINIT_POLICY_LPID"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 19
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/alipay/mobile/nebulacore/api/UCInitPolicy;->EXPIRY_TIME:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static needUCInitSkip(Landroid/content/Context;)Z
    .locals 17
    .param p0, "context"    # Landroid/content/Context;

    .line 38
    const/4 v0, 0x0

    .line 40
    .local v0, "needUCInitSkip":Z
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    const/4 v2, 0x0

    move-object v3, v2

    .line 41
    .local v3, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    move-object v3, v1

    const/4 v4, 0x0

    if-nez v1, :cond_0

    .line 42
    return v4

    .line 45
    :cond_0
    const-string v1, "h5_enableInitSkip"

    invoke-interface {v3, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 46
    .local v1, "value":Ljava/lang/String;
    const-string/jumbo v5, "no"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 47
    return v4

    .line 50
    :cond_1
    const-class v5, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/nebula/process/H5EventHandler;

    move-object v6, v2

    .line 51
    .local v6, "h5EventHandlerService":Lcom/alipay/mobile/nebula/process/H5EventHandler;
    move-object v6, v5

    const/4 v7, -0x1

    if-eqz v5, :cond_2

    invoke-interface {v6}, Lcom/alipay/mobile/nebula/process/H5EventHandler;->getLitePid()I

    move-result v5

    goto :goto_0

    :cond_2
    const/4 v5, -0x1

    .line 52
    .local v4, "litePid":I
    :goto_0
    move v4, v5

    const-string v8, "UCInitPolicy"

    if-lez v5, :cond_4

    .line 53
    const/4 v5, 0x4

    move-object/from16 v9, p0

    invoke-virtual {v9, v8, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 54
    .local v2, "sp":Landroid/content/SharedPreferences;
    move-object v2, v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 55
    .local v5, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v10, "UCINIT_POLICY_LPID"

    invoke-interface {v2, v10, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 56
    .local v7, "targetLitePid":I
    const-wide/16 v11, -0x1

    const-string v13, "UCINIT_POLICY_EXPIRY"

    invoke-interface {v2, v13, v11, v12}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v11

    .line 57
    .local v11, "expiryTime":J
    if-ne v7, v4, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    cmp-long v16, v14, v11

    if-gez v16, :cond_3

    .line 58
    const/4 v0, 0x1

    .line 61
    :cond_3
    invoke-interface {v5, v10}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10, v13}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1

    .line 52
    .end local v2    # "sp":Landroid/content/SharedPreferences;
    .end local v5    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v7    # "targetLitePid":I
    .end local v11    # "expiryTime":J
    :cond_4
    move-object/from16 v9, p0

    .line 64
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "needUCInitSkip:"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return v0
.end method

.method public static saveUCInitSkipPolicy(Landroid/content/Context;I)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "litePid"    # I

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "saveUCInitSkipPolicy:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UCInitPolicy"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    if-lez p1, :cond_0

    .line 26
    const/4 v0, 0x4

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 27
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v1, 0x0

    .line 28
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    move-object v1, v0

    const-string v2, "UCINIT_POLICY_LPID"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/alipay/mobile/nebulacore/api/UCInitPolicy;->EXPIRY_TIME:J

    add-long/2addr v2, v4

    const-string v0, "UCINIT_POLICY_EXPIRY"

    invoke-interface {v1, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 30
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 32
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method
