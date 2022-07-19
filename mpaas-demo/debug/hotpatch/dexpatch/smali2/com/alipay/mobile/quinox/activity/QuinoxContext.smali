.class public Lcom/alipay/mobile/quinox/activity/QuinoxContext;
.super Landroid/app/Application;
.source "QuinoxContext.java"


# static fields
.field private static final f:[Ljava/lang/String;


# instance fields
.field private a:Ljava/lang/ClassLoader;

.field private b:Lcom/alipay/mobile/quinox/resources/ResourcesManager;

.field private c:Lcom/alipay/mobile/quinox/bundle/BundleManager;

.field private d:Ljava/lang/String;

.field private e:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    const-string v0, "mLoadedApk"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/quinox/activity/QuinoxContext;->f:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;Lcom/alipay/mobile/quinox/LauncherApplication;Ljava/lang/ClassLoader;Ljava/lang/String;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "base"    # Landroid/content/Context;
    .param p3, "application"    # Lcom/alipay/mobile/quinox/LauncherApplication;
    .param p4, "classLoader"    # Ljava/lang/ClassLoader;
    .param p5, "className"    # Ljava/lang/String;

    .line 53
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 54
    invoke-virtual {p0, p2}, Lcom/alipay/mobile/quinox/activity/QuinoxContext;->attachBaseContext(Landroid/content/Context;)V

    .line 55
    sget-object v0, Lcom/alipay/mobile/quinox/activity/QuinoxContext;->f:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    const-string v3, "QuinoxContext"

    if-ge v2, v1, :cond_0

    aget-object v4, v0, v2

    .line 57
    .local v4, "fieldName":Ljava/lang/String;
    :try_start_0
    const-class v5, Landroid/app/Application;

    invoke-static {v5, p3, v4}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 58
    .local v5, "obj":Ljava/lang/Object;
    const-class v6, Landroid/app/Application;

    invoke-static {v6, p0, v4, v5}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->setFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    .end local v5    # "obj":Ljava/lang/Object;
    goto :goto_1

    .line 59
    :catchall_0
    move-exception v5

    .line 60
    .local v5, "e":Ljava/lang/Throwable;
    invoke-static {v3, v5}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 55
    .end local v4    # "fieldName":Ljava/lang/String;
    .end local v5    # "e":Ljava/lang/Throwable;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 64
    :cond_0
    invoke-virtual {p3}, Lcom/alipay/mobile/quinox/LauncherApplication;->getResourcesManager()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/quinox/resources/ResourcesManager;

    iput-object v0, p0, Lcom/alipay/mobile/quinox/activity/QuinoxContext;->b:Lcom/alipay/mobile/quinox/resources/ResourcesManager;

    .line 65
    invoke-virtual {p3}, Lcom/alipay/mobile/quinox/LauncherApplication;->getBundleManager()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/quinox/bundle/BundleManager;

    iput-object v0, p0, Lcom/alipay/mobile/quinox/activity/QuinoxContext;->c:Lcom/alipay/mobile/quinox/bundle/BundleManager;

    .line 66
    iput-object p4, p0, Lcom/alipay/mobile/quinox/activity/QuinoxContext;->a:Ljava/lang/ClassLoader;

    .line 67
    iput-object p5, p0, Lcom/alipay/mobile/quinox/activity/QuinoxContext;->d:Ljava/lang/String;

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/quinox/activity/QuinoxContext;->a(Landroid/app/Activity;Landroid/content/Context;)V

    .line 71
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mResources"

    iget-object v2, p0, Lcom/alipay/mobile/quinox/activity/QuinoxContext;->e:Landroid/content/res/Resources;

    invoke-static {v0, p2, v1, v2}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->setFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 74
    return-void

    .line 72
    :catchall_1
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v3, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method private a(Landroid/app/Activity;Landroid/content/Context;)V
    .locals 4

    .line 86
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/activity/QuinoxContext;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 88
    instance-of v1, v0, Lcom/alipay/mobile/quinox/resources/BundleResources;

    const-string v2, "QuinoxContext"

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/alipay/mobile/quinox/resources/BundleResources;

    .line 89
    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/resources/BundleResources;->getBundleName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "application_resources"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 90
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "use replaced resources:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iput-object v0, p0, Lcom/alipay/mobile/quinox/activity/QuinoxContext;->e:Landroid/content/res/Resources;

    goto/16 :goto_2

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/activity/QuinoxContext;->a:Ljava/lang/ClassLoader;

    instance-of v1, v0, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 95
    check-cast v0, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;->a()Lcom/alipay/mobile/quinox/bundle/Bundle;

    move-result-object v0

    .line 97
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/quinox/activity/QuinoxContext;->b:Lcom/alipay/mobile/quinox/resources/ResourcesManager;

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v1, v0, v3}, Lcom/alipay/mobile/quinox/resources/ResourcesManager;->getResourcesByBundle(Lcom/alipay/mobile/quinox/bundle/Bundle;[Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/quinox/activity/QuinoxContext;->e:Landroid/content/res/Resources;

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "get resource from bundle: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    goto :goto_1

    .line 99
    :catchall_0
    move-exception v0

    .line 100
    invoke-static {v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 102
    goto :goto_1

    .line 104
    :cond_1
    const/4 v0, 0x0

    .line 106
    iget-object v1, p0, Lcom/alipay/mobile/quinox/activity/QuinoxContext;->c:Lcom/alipay/mobile/quinox/bundle/BundleManager;

    if-eqz v1, :cond_2

    .line 107
    iget-object v0, p0, Lcom/alipay/mobile/quinox/activity/QuinoxContext;->d:Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/alipay/mobile/quinox/bundle/BundleManager;->b(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/Bundle;

    move-result-object v0

    .line 110
    :cond_2
    if-eqz v0, :cond_3

    .line 112
    :try_start_1
    iget-object v1, p0, Lcom/alipay/mobile/quinox/activity/QuinoxContext;->b:Lcom/alipay/mobile/quinox/resources/ResourcesManager;

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v1, v0, v3}, Lcom/alipay/mobile/quinox/resources/ResourcesManager;->getResourcesByBundle(Lcom/alipay/mobile/quinox/bundle/Bundle;[Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/quinox/activity/QuinoxContext;->e:Landroid/content/res/Resources;

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "get resource from component: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 114
    :catchall_1
    move-exception v0

    .line 115
    invoke-static {v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 116
    :goto_0
    goto :goto_1

    .line 118
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to findBundle by Activity:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/quinox/activity/QuinoxContext;->e:Landroid/content/res/Resources;

    if-nez v0, :cond_4

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "set application_resources to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/alipay/mobile/quinox/activity/QuinoxContext;->e:Landroid/content/res/Resources;

    goto :goto_2

    .line 126
    :cond_4
    invoke-virtual {p1}, Landroid/app/Activity;->getThemeResId()I

    move-result v0

    .line 127
    if-eqz v0, :cond_6

    .line 128
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/activity/QuinoxContext;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 129
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p2

    .line 130
    if-eqz p2, :cond_5

    .line 131
    invoke-virtual {v1, p2}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 133
    :cond_5
    const/4 p2, 0x1

    invoke-virtual {v1, v0, p2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 136
    :try_start_2
    invoke-static {p1, v1}, Lcom/alipay/mobile/quinox/utils/ApiCompat;->setTheme(Landroid/view/ContextThemeWrapper;Landroid/content/res/Resources$Theme;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 139
    goto :goto_2

    .line 137
    :catch_0
    move-exception p1

    .line 138
    invoke-static {v2, p1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 144
    :cond_6
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "initResources for: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/alipay/mobile/quinox/activity/QuinoxContext;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ",resource="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/alipay/mobile/quinox/activity/QuinoxContext;->e:Landroid/content/res/Resources;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    return-void
.end method


# virtual methods
.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    .line 154
    invoke-static {}, Lcom/alipay/mobile/quinox/LauncherApplication;->getInstance()Lcom/alipay/mobile/quinox/LauncherApplication;

    move-result-object v0

    return-object v0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/alipay/mobile/quinox/activity/QuinoxContext;->a:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/alipay/mobile/quinox/activity/QuinoxContext;->e:Landroid/content/res/Resources;

    return-object v0
.end method

.method public registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    .locals 1
    .param p1, "callback"    # Landroid/content/ComponentCallbacks;

    .line 159
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/activity/QuinoxContext;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 160
    return-void
.end method

.method public unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    .locals 1
    .param p1, "callback"    # Landroid/content/ComponentCallbacks;

    .line 164
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/activity/QuinoxContext;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 165
    return-void
.end method
