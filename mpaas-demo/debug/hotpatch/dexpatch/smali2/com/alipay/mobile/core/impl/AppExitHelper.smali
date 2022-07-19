.class public Lcom/alipay/mobile/core/impl/AppExitHelper;
.super Ljava/lang/Object;
.source "AppExitHelper.java"


# instance fields
.field private a:Landroid/app/Application$ActivityLifecycleCallbacks;

.field private b:Lcom/alipay/mobile/framework/MicroApplicationContext;

.field mTargetApp:Landroid/app/Application;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()V
    .locals 2

    .line 56
    new-instance v0, Lcom/alipay/mobile/core/impl/AppExitHelper$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/core/impl/AppExitHelper$1;-><init>(Lcom/alipay/mobile/core/impl/AppExitHelper;)V

    iput-object v0, p0, Lcom/alipay/mobile/core/impl/AppExitHelper;->a:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "registerActivityLifecycleCallbacks("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/core/impl/AppExitHelper;->mTargetApp:Landroid/app/Application;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MicroAppContextImpl"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/AppExitHelper;->mTargetApp:Landroid/app/Application;

    iget-object v1, p0, Lcom/alipay/mobile/core/impl/AppExitHelper;->a:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 118
    return-void
.end method

.method private static a(Landroid/app/Activity;Landroid/app/Activity;)V
    .locals 12
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "exclude"    # Landroid/app/Activity;

    const-string v0, "MicroAppContextImpl"

    .line 161
    :try_start_0
    const-string v1, "android.app.Activity"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 162
    .local v3, "clazz_Activity":Ljava/lang/Class;
    const-string/jumbo v4, "mMainThread"

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    move-object v4, v2

    .line 163
    .local v4, "field_mMainThread":Ljava/lang/reflect/Field;
    move-object v4, v1

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 164
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 166
    .local v1, "mMainThread":Ljava/lang/Object;
    const-string v6, "android.app.ActivityThread"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 167
    const-string v7, "mActivities"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    move-object v7, v2

    .line 168
    .local v7, "field_mActivities":Ljava/lang/reflect/Field;
    move-object v7, v6

    invoke-virtual {v6, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 169
    invoke-virtual {v7, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 171
    check-cast v6, Ljava/util/Map;

    .line 172
    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    move-object v8, v2

    .line 173
    .local v8, "collections":Ljava/util/Collection;
    move-object v8, v6

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 174
    const-string v6, "android.app.ActivityThread$ActivityClientRecord"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 175
    const-string v9, "activity"

    invoke-virtual {v6, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    move-object v9, v2

    .line 176
    .local v9, "fieldActivity":Ljava/lang/reflect/Field;
    move-object v9, v6

    invoke-virtual {v6, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 179
    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v6, v2

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 180
    .local v2, "obj":Ljava/lang/Object;
    move-object v2, v10

    if-eqz v10, :cond_0

    .line 181
    invoke-virtual {v9, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/Activity;

    .line 182
    .local v6, "_activity":Landroid/app/Activity;
    move-object v6, v10

    if-eqz v10, :cond_0

    if-eq v6, p1, :cond_0

    instance-of v10, v6, Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    if-nez v10, :cond_0

    instance-of v10, v6, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    if-nez v10, :cond_0

    .line 186
    invoke-virtual {v6}, Landroid/app/Activity;->isFinishing()Z

    move-result v10

    if-nez v10, :cond_0

    .line 187
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "activity.name="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " not finish."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-virtual {v6}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    .end local v2    # "obj":Ljava/lang/Object;
    .end local v6    # "_activity":Landroid/app/Activity;
    :cond_0
    goto :goto_0

    .line 195
    .end local v1    # "mMainThread":Ljava/lang/Object;
    .end local v3    # "clazz_Activity":Ljava/lang/Class;
    .end local v4    # "field_mMainThread":Ljava/lang/reflect/Field;
    .end local v7    # "field_mActivities":Ljava/lang/reflect/Field;
    .end local v8    # "collections":Ljava/util/Collection;
    .end local v9    # "fieldActivity":Ljava/lang/reflect/Field;
    :cond_1
    return-void

    .line 193
    :catchall_0
    move-exception v1

    .line 194
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 196
    .end local v1    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/core/impl/AppExitHelper;)Lcom/alipay/mobile/framework/MicroApplicationContext;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/core/impl/AppExitHelper;

    .line 30
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/AppExitHelper;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    return-object v0
.end method

.method private b()V
    .locals 2

    .line 151
    const-string v0, "MicroAppContextImpl"

    const-string/jumbo v1, "unregisterActivityLifecycleCallbacks()"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/AppExitHelper;->mTargetApp:Landroid/app/Application;

    iget-object v1, p0, Lcom/alipay/mobile/core/impl/AppExitHelper;->a:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 153
    return-void
.end method


# virtual methods
.method public finishAllActivities(Landroid/app/Activity;Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "exclude"    # Landroid/app/Activity;

    .line 127
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 131
    if-nez p2, :cond_0

    .line 132
    invoke-direct {p0}, Lcom/alipay/mobile/core/impl/AppExitHelper;->b()V

    .line 134
    :cond_0
    invoke-static {p2}, Lcom/alipay/mobile/framework/app/ui/ActivityCollections;->destroy(Landroid/app/Activity;)V

    return-void

    .line 137
    :cond_1
    if-eqz p1, :cond_2

    .line 144
    invoke-static {p1, p2}, Lcom/alipay/mobile/core/impl/AppExitHelper;->a(Landroid/app/Activity;Landroid/app/Activity;)V

    .line 147
    :cond_2
    return-void
.end method

.method public init(Landroid/app/Application;Lcom/alipay/mobile/framework/MicroApplicationContext;)V
    .locals 2
    .param p1, "app"    # Landroid/app/Application;
    .param p2, "microApplicationContext"    # Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 44
    if-eqz p1, :cond_1

    .line 47
    iput-object p1, p0, Lcom/alipay/mobile/core/impl/AppExitHelper;->mTargetApp:Landroid/app/Application;

    .line 48
    iput-object p2, p0, Lcom/alipay/mobile/core/impl/AppExitHelper;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 49
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 50
    invoke-direct {p0}, Lcom/alipay/mobile/core/impl/AppExitHelper;->a()V

    .line 52
    :cond_0
    return-void

    .line 45
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The app can\'t be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
