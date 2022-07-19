.class final Lcom/mpaas/mas/adapter/api/MPLogger$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mpaas/mas/adapter/api/MPLogger;->reportLaunchTime(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$end:J


# direct methods
.method constructor <init>(Landroid/content/Context;J)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/mpaas/mas/adapter/api/MPLogger$1;->val$context:Landroid/content/Context;

    iput-wide p2, p0, Lcom/mpaas/mas/adapter/api/MPLogger$1;->val$end:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 146
    iget-object v0, p0, Lcom/mpaas/mas/adapter/api/MPLogger$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    .line 148
    .local v1, "sp":Landroid/content/SharedPreferences;
    move-object v1, v0

    const-string v2, "performance_startup"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    const-string v3, "MPLogger"

    if-nez v0, :cond_0

    .line 149
    const-string v0, "no start time recorded in sp, reporting launch time is skipped!"

    invoke-static {v3, v0}, Lcom/mpaas/mas/adapter/api/MPLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    return-void

    .line 152
    :cond_0
    iget-wide v4, p0, Lcom/mpaas/mas/adapter/api/MPLogger$1;->val$end:J

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 153
    .local v4, "start":J
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 154
    iget-wide v6, p0, Lcom/mpaas/mas/adapter/api/MPLogger$1;->val$end:J

    sub-long/2addr v6, v4

    const-wide/16 v8, 0x0

    move-wide v10, v8

    .line 155
    .local v10, "launchTime":J
    move-wide v10, v6

    cmp-long v0, v6, v8

    if-gtz v0, :cond_1

    .line 156
    const-string v0, "launchTime <= 0, reporting launch time is skipped!"

    invoke-static {v3, v0}, Lcom/mpaas/mas/adapter/api/MPLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    return-void

    .line 161
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "key_is_first_start_"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mpaas/mas/adapter/api/MPLogger$1;->val$context:Landroid/content/Context;

    invoke-static {v2}, Lcom/mpaas/mas/adapter/api/MasUtil;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, "keyFirstStart":Ljava/lang/String;
    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const/4 v6, 0x0

    move v7, v6

    .line 163
    .local v7, "isFirstStart":Z
    move v7, v2

    if-eqz v2, :cond_2

    .line 164
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v0, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 169
    :cond_2
    invoke-static {}, Lcom/mpaas/mas/adapter/api/MasUtil;->tryFixDeviceId()V

    .line 171
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMpaasLogger()Lcom/alipay/mobile/common/logging/api/behavior/MpaasLogger;

    move-result-object v2

    invoke-interface {v2, v10, v11, v7}, Lcom/alipay/mobile/common/logging/api/behavior/MpaasLogger;->launchTime(JZ)V

    .line 173
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "launchTime: "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " ,isFirstStart: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/mpaas/mas/adapter/api/MPLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    return-void
.end method
