.class public Lcom/alipay/mobile/core/init/impl/BootLoaderImpl;
.super Ljava/lang/Object;
.source "BootLoaderImpl.java"

# interfaces
.implements Lcom/alipay/mobile/core/init/BootLoader;


# static fields
.field public static final LOAD_SERVICE_THREAD:Ljava/lang/String; = "LauncherApplication.Init.LoadService"


# instance fields
.field private a:Lcom/alipay/mobile/framework/MicroApplicationContext;

.field private b:Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;

.field private c:Lcom/alipay/mobile/framework/service/ServicesLoader;

.field private d:Lcom/alipay/mobile/core/service/impl/ExternalServiceManagerImpl;

.field private e:Landroid/content/pm/ApplicationInfo;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/framework/MicroApplicationContext;)V
    .locals 0
    .param p1, "microApplicationContext"    # Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/alipay/mobile/core/init/impl/BootLoaderImpl;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 59
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 5
    .param p1, "bundleName"    # Ljava/lang/String;

    .line 231
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    .line 232
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getBundleContext()Lcom/alipay/mobile/framework/BundleContext;

    move-result-object v0

    .line 233
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/BundleContext;->findClassLoaderByBundleName(Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v0

    .line 234
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    invoke-static {p1}, Lcom/alipay/mobile/core/init/impl/BundleInfoHelper;->getBundlePackageNames(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 235
    .local v3, "packages":Ljava/util/Set;
    move-object v3, v1

    if-eqz v1, :cond_1

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 236
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 237
    .local v2, "packageName":Ljava/lang/String;
    move-object v2, v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 239
    iget-object v4, p0, Lcom/alipay/mobile/core/init/impl/BootLoaderImpl;->b:Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;

    invoke-virtual {v4, p1, v2}, Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;->preloadBundleMetaInfoClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;

    .line 241
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 244
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getBundleMetaInfo(bundleName="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "), classLoader="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", packages="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    invoke-static {v3}, Lcom/alipay/mobile/quinox/utils/StringUtil;->collection2String(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 244
    const-string v2, "BootLoader"

    invoke-static {v2, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    return-void
.end method

.method private a(Z)V
    .locals 8
    .param p1, "preload"    # Z

    const-string v0, "BootLoader"

    .line 80
    iget-object v1, p0, Lcom/alipay/mobile/core/init/impl/BootLoaderImpl;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    .line 83
    .local v1, "application":Landroid/app/Application;
    const/4 v2, 0x0

    .line 84
    .local v2, "agentCommonServiceLoad":Ljava/lang/String;
    const/4 v3, 0x0

    .line 86
    .local v3, "agentEntryPkgName":Ljava/lang/String;
    const/4 v4, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/alipay/mobile/core/init/impl/BootLoaderImpl;->e:Landroid/content/pm/ApplicationInfo;

    if-nez v5, :cond_0

    .line 87
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/ApplicationInfoProvider;->getInstance()Lcom/alipay/mobile/common/logging/util/ApplicationInfoProvider;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/common/logging/util/ApplicationInfoProvider;->getMetaDataAppInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iput-object v5, p0, Lcom/alipay/mobile/core/init/impl/BootLoaderImpl;->e:Landroid/content/pm/ApplicationInfo;

    .line 89
    :cond_0
    iget-object v5, p0, Lcom/alipay/mobile/core/init/impl/BootLoaderImpl;->e:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v6, "agent.commonservice.load"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    .line 90
    iget-object v5, p0, Lcom/alipay/mobile/core/init/impl/BootLoaderImpl;->e:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v6, "agent.entry.pkgname"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 91
    iget-object v5, p0, Lcom/alipay/mobile/core/init/impl/BootLoaderImpl;->e:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v6, "agent.entry.appid"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v4

    .line 92
    .local v6, "entryAppId":Ljava/lang/Object;
    move-object v6, v5

    if-nez v5, :cond_1

    .line 93
    const-string v5, "20000001"

    move-object v6, v5

    .line 96
    :cond_1
    iget-object v5, p0, Lcom/alipay/mobile/core/init/impl/BootLoaderImpl;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v7, Lcom/alipay/mobile/core/ApplicationManager;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/core/ApplicationManager;

    .line 97
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Lcom/alipay/mobile/core/ApplicationManager;->setEntryAppId(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .end local v6    # "entryAppId":Ljava/lang/Object;
    goto :goto_0

    .line 98
    :catch_0
    move-exception v5

    .line 99
    .local v5, "e1":Ljava/lang/Exception;
    invoke-static {v0, v5}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 102
    .end local v5    # "e1":Ljava/lang/Exception;
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 103
    const-string v2, "com.alipay.mobile.framework.service.common.loader.CommonServiceLoadAgent"

    .line 106
    :cond_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 107
    const-string v3, "com.alipay.android.launcher"

    goto :goto_1

    .line 109
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "agentEntryPkgName from meta:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :goto_1
    iget-object v5, p0, Lcom/alipay/mobile/core/init/impl/BootLoaderImpl;->d:Lcom/alipay/mobile/core/service/impl/ExternalServiceManagerImpl;

    if-nez v5, :cond_4

    .line 114
    new-instance v5, Lcom/alipay/mobile/core/service/impl/ExternalServiceManagerImpl;

    invoke-direct {v5}, Lcom/alipay/mobile/core/service/impl/ExternalServiceManagerImpl;-><init>()V

    iput-object v5, p0, Lcom/alipay/mobile/core/init/impl/BootLoaderImpl;->d:Lcom/alipay/mobile/core/service/impl/ExternalServiceManagerImpl;

    .line 115
    iget-object v6, p0, Lcom/alipay/mobile/core/init/impl/BootLoaderImpl;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-virtual {v5, v6}, Lcom/alipay/mobile/core/service/impl/ExternalServiceManagerImpl;->attachContext(Lcom/alipay/mobile/framework/MicroApplicationContext;)V

    .line 116
    iget-object v5, p0, Lcom/alipay/mobile/core/init/impl/BootLoaderImpl;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v6, Lcom/alipay/mobile/framework/service/ext/ExternalServiceManager;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/alipay/mobile/core/init/impl/BootLoaderImpl;->d:Lcom/alipay/mobile/core/service/impl/ExternalServiceManagerImpl;

    invoke-interface {v5, v6, v7}, Lcom/alipay/mobile/framework/MicroApplicationContext;->registerService(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 119
    :cond_4
    iget-object v5, p0, Lcom/alipay/mobile/core/init/impl/BootLoaderImpl;->b:Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;

    if-nez v5, :cond_5

    .line 120
    new-instance v5, Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;

    invoke-direct {v5, p0, v3, v4}, Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;-><init>(Lcom/alipay/mobile/core/init/BootLoader;Ljava/lang/String;Landroid/os/Handler;)V

    iput-object v5, p0, Lcom/alipay/mobile/core/init/impl/BootLoaderImpl;->b:Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;

    .line 123
    :cond_5
    invoke-static {}, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessFramework;->isQuinoxlessMode()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 126
    :try_start_1
    invoke-virtual {v1}, Landroid/app/Application;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 127
    .local v4, "clazz":Ljava/lang/Class;
    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/framework/service/ServicesLoader;

    iput-object v5, p0, Lcom/alipay/mobile/core/init/impl/BootLoaderImpl;->c:Lcom/alipay/mobile/framework/service/ServicesLoader;

    .line 128
    invoke-interface {v5}, Lcom/alipay/mobile/framework/service/ServicesLoader;->load()V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v4    # "clazz":Ljava/lang/Class;
    goto :goto_2

    .line 135
    :catchall_0
    move-exception v4

    .line 136
    .local v4, "e":Ljava/lang/Throwable;
    invoke-static {v0, v4}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 133
    .end local v4    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v4

    .line 134
    .local v4, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v0, v4}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v4    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_2

    .line 131
    :catch_2
    move-exception v4

    .line 132
    .local v4, "e":Ljava/lang/InstantiationException;
    invoke-static {v0, v4}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v4    # "e":Ljava/lang/InstantiationException;
    goto :goto_2

    .line 129
    :catch_3
    move-exception v4

    .line 130
    .local v4, "e":Ljava/lang/ClassNotFoundException;
    invoke-static {v0, v4}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 137
    .end local v4    # "e":Ljava/lang/ClassNotFoundException;
    :goto_2
    nop

    .line 138
    :goto_3
    iget-object v0, p0, Lcom/alipay/mobile/core/init/impl/BootLoaderImpl;->b:Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;

    invoke-virtual {v0}, Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;->loadBundleDefinitions()V

    .line 139
    return-void

    .line 142
    :cond_6
    if-nez p1, :cond_8

    .line 144
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/TimingLogger;->getBootLogger()Lcom/alipay/mobile/quinox/utils/TimingLogger;

    move-result-object v4

    const-string/jumbo v5, "t_bootload1"

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/quinox/utils/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 145
    const-string/jumbo v4, "time_startup_sub"

    const-string/jumbo v5, "t_bootload2"

    invoke-static {v4, v5}, Lcom/alipay/mobile/quinox/utils/SpiderLogger;->startSection(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :try_start_2
    invoke-virtual {v1}, Landroid/app/Application;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 148
    .local v6, "clazz":Ljava/lang/Class;
    invoke-virtual {v6}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alipay/mobile/framework/service/ServicesLoader;

    iput-object v7, p0, Lcom/alipay/mobile/core/init/impl/BootLoaderImpl;->c:Lcom/alipay/mobile/framework/service/ServicesLoader;

    .line 149
    invoke-interface {v7}, Lcom/alipay/mobile/framework/service/ServicesLoader;->load()V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_4

    .end local v6    # "clazz":Ljava/lang/Class;
    goto :goto_4

    .line 154
    :catch_4
    move-exception v6

    .line 155
    .local v6, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v0, v6}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 152
    .end local v6    # "e":Ljava/lang/IllegalAccessException;
    :catch_5
    move-exception v6

    .line 153
    .local v6, "e":Ljava/lang/InstantiationException;
    invoke-static {v0, v6}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v6    # "e":Ljava/lang/InstantiationException;
    goto :goto_4

    .line 150
    :catch_6
    move-exception v6

    .line 151
    .local v6, "e":Ljava/lang/ClassNotFoundException;
    invoke-static {v0, v6}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 156
    .end local v6    # "e":Ljava/lang/ClassNotFoundException;
    :goto_4
    nop

    .line 157
    :goto_5
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/TimingLogger;->getBootLogger()Lcom/alipay/mobile/quinox/utils/TimingLogger;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/quinox/utils/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 158
    const-string/jumbo v0, "t_agentinitover"

    invoke-static {v4, v0}, Lcom/alipay/mobile/quinox/utils/SpiderLogger;->startSection(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    sget-boolean v0, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->NEED_PRELOAD:Z

    if-nez v0, :cond_7

    sget-boolean v0, Lcom/alipay/mobile/quinox/startup/LaunchStrategy;->PRELOAD_DOWNGRADE:Z

    if-nez v0, :cond_7

    sget-boolean v0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->mShouldOptimizeBootFinishSpeed:Z

    if-nez v0, :cond_7

    .line 161
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    const/4 v4, 0x2

    if-le v0, v4, :cond_7

    iget-object v0, p0, Lcom/alipay/mobile/core/init/impl/BootLoaderImpl;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 162
    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/LiteProcessInfo;->g(Landroid/content/Context;)Lcom/alipay/mobile/quinox/utils/LiteProcessInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/LiteProcessInfo;->isCurrentProcessALiteProcess()Z

    move-result v0

    if-nez v0, :cond_7

    .line 165
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->mShouldOptimizeBootFinishSpeed:Z

    .line 167
    new-instance v0, Ljava/lang/Thread;

    new-instance v4, Lcom/alipay/mobile/core/init/impl/BootLoaderImpl$1;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/core/init/impl/BootLoaderImpl$1;-><init>(Lcom/alipay/mobile/core/init/impl/BootLoaderImpl;)V

    invoke-direct {v0, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    move-object v4, v6

    .line 187
    .local v4, "loadServiceThread":Ljava/lang/Thread;
    move-object v6, v0

    .end local v4    # "loadServiceThread":Ljava/lang/Thread;
    .local v6, "loadServiceThread":Ljava/lang/Thread;
    const-string v4, "LauncherApplication.Init.LoadService"

    invoke-virtual {v0, v4}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 194
    .end local v6    # "loadServiceThread":Ljava/lang/Thread;
    :cond_7
    iget-object v0, p0, Lcom/alipay/mobile/core/init/impl/BootLoaderImpl;->b:Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;

    invoke-virtual {v0}, Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;->loadBundleDefinitions()V

    .line 198
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object v4, v6

    .line 199
    .local v4, "tempHandler":Landroid/os/Handler;
    new-instance v5, Lcom/alipay/mobile/core/init/impl/BootLoaderImpl$2;

    invoke-direct {v5, p0}, Lcom/alipay/mobile/core/init/impl/BootLoaderImpl$2;-><init>(Lcom/alipay/mobile/core/init/impl/BootLoaderImpl;)V

    const-wide/16 v6, 0x1b58

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 204
    .end local v4    # "tempHandler":Landroid/os/Handler;
    return-void

    .line 205
    :cond_8
    new-instance v0, Lcom/alipay/mobile/core/init/impl/BootLoaderImpl$3;

    const-string v4, "LauncherApplication.Init.Preload.ComponentClass"

    invoke-direct {v0, p0, v4}, Lcom/alipay/mobile/core/init/impl/BootLoaderImpl$3;-><init>(Lcom/alipay/mobile/core/init/impl/BootLoaderImpl;Ljava/lang/String;)V

    .line 226
    invoke-virtual {v0}, Lcom/alipay/mobile/core/init/impl/BootLoaderImpl$3;->start()V

    .line 228
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/core/init/impl/BootLoaderImpl;)Lcom/alipay/mobile/framework/MicroApplicationContext;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/core/init/impl/BootLoaderImpl;

    .line 49
    iget-object v0, p0, Lcom/alipay/mobile/core/init/impl/BootLoaderImpl;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/core/init/impl/BootLoaderImpl;)Lcom/alipay/mobile/framework/service/ServicesLoader;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/core/init/impl/BootLoaderImpl;

    .line 49
    iget-object v0, p0, Lcom/alipay/mobile/core/init/impl/BootLoaderImpl;->c:Lcom/alipay/mobile/framework/service/ServicesLoader;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/core/init/impl/BootLoaderImpl;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/core/init/impl/BootLoaderImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .line 49
    invoke-direct {p0, p1}, Lcom/alipay/mobile/core/init/impl/BootLoaderImpl;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/alipay/mobile/core/init/impl/BootLoaderImpl;)Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/core/init/impl/BootLoaderImpl;

    .line 49
    iget-object v0, p0, Lcom/alipay/mobile/core/init/impl/BootLoaderImpl;->b:Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;

    return-object v0
.end method


# virtual methods
.method public getContext()Lcom/alipay/mobile/framework/MicroApplicationContext;
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/alipay/mobile/core/init/impl/BootLoaderImpl;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    return-object v0
.end method

.method public load()V
    .locals 1

    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/core/init/impl/BootLoaderImpl;->a(Z)V

    .line 77
    return-void
.end method

.method public loadBundle(Ljava/lang/String;)V
    .locals 2
    .param p1, "bundleName"    # Ljava/lang/String;

    .line 255
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getBundleContext()Lcom/alipay/mobile/framework/BundleContext;

    move-result-object v0

    .line 256
    .local v0, "bundleContext":Lcom/alipay/mobile/framework/BundleContext;
    iget-object v1, p0, Lcom/alipay/mobile/core/init/impl/BootLoaderImpl;->b:Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;

    invoke-virtual {v1, v0, p1}, Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;->loadBundle(Lcom/alipay/mobile/framework/BundleContext;Ljava/lang/String;)V

    .line 257
    return-void
.end method

.method public loadServices()V
    .locals 3

    .line 293
    iget-object v0, p0, Lcom/alipay/mobile/core/init/impl/BootLoaderImpl;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/LiteProcessInfo;->g(Landroid/content/Context;)Lcom/alipay/mobile/quinox/utils/LiteProcessInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/LiteProcessInfo;->isCurrentProcessALiteProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    return-void

    .line 297
    :cond_0
    const-class v0, Lcom/alipay/mobile/quinox/utils/AppState;

    monitor-enter v0

    .line 298
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/AppState;->isPreloadingActivity()Z

    move-result v1

    if-nez v1, :cond_1

    .line 299
    iget-object v1, p0, Lcom/alipay/mobile/core/init/impl/BootLoaderImpl;->b:Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;

    invoke-virtual {v1}, Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;->loadBundleServices()V

    goto :goto_0

    .line 301
    :cond_1
    new-instance v1, Lcom/alipay/mobile/core/init/impl/BootLoaderImpl$4;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/core/init/impl/BootLoaderImpl$4;-><init>(Lcom/alipay/mobile/core/init/impl/BootLoaderImpl;)V

    invoke-static {v1}, Lcom/alipay/mobile/quinox/utils/AppState;->addPreloadActivityFinishCallback(Lcom/alipay/mobile/quinox/utils/Callback;)V

    .line 314
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    const-string v1, "Pipeline"

    const-string v2, "PIPELINE_FRAMEWORK_INITED : start"

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    sget-boolean v1, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->NEED_SYNC:Z

    if-nez v1, :cond_2

    .line 317
    iget-object v1, p0, Lcom/alipay/mobile/core/init/impl/BootLoaderImpl;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-string v2, "com.alipay.mobile.framework.INITED"

    .line 318
    invoke-interface {v1, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getPipelineByName(Ljava/lang/String;)Lcom/alipay/mobile/framework/pipeline/Pipeline;

    move-result-object v1

    .line 319
    .local v0, "pipeLine":Lcom/alipay/mobile/framework/pipeline/Pipeline;
    invoke-interface {v1}, Lcom/alipay/mobile/framework/pipeline/Pipeline;->start()V

    .line 321
    .end local v0    # "pipeLine":Lcom/alipay/mobile/framework/pipeline/Pipeline;
    :cond_2
    return-void

    .line 314
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public postLoad()V
    .locals 2

    .line 260
    const-string v0, "BootLoader"

    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/core/init/impl/BootLoaderImpl;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    goto :goto_0

    .line 261
    :catchall_0
    move-exception v1

    .line 262
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 264
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/core/init/impl/BootLoaderImpl;->b:Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;

    invoke-virtual {v1}, Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;->loadBundleImpl()V

    .line 266
    sget-boolean v1, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->NEED_SYNC:Z

    if-eqz v1, :cond_0

    .line 267
    iget-object v1, p0, Lcom/alipay/mobile/core/init/impl/BootLoaderImpl;->c:Lcom/alipay/mobile/framework/service/ServicesLoader;

    if-eqz v1, :cond_1

    .line 269
    :try_start_1
    invoke-interface {v1}, Lcom/alipay/mobile/framework/service/ServicesLoader;->afterBootLoad()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 272
    return-void

    .line 270
    :catchall_1
    move-exception v1

    .line 271
    .restart local v1    # "e":Ljava/lang/Throwable;
    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 272
    .end local v1    # "e":Ljava/lang/Throwable;
    return-void

    .line 280
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/core/init/impl/BootLoaderImpl;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/quinox/utils/LiteProcessInfo;->g(Landroid/content/Context;)Lcom/alipay/mobile/quinox/utils/LiteProcessInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/utils/LiteProcessInfo;->isCurrentProcessALiteProcess()Z

    move-result v1

    if-nez v1, :cond_1

    .line 281
    iget-object v1, p0, Lcom/alipay/mobile/core/init/impl/BootLoaderImpl;->c:Lcom/alipay/mobile/framework/service/ServicesLoader;

    if-eqz v1, :cond_1

    .line 283
    :try_start_2
    invoke-interface {v1}, Lcom/alipay/mobile/framework/service/ServicesLoader;->afterBootLoad()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 286
    return-void

    .line 284
    :catchall_2
    move-exception v1

    .line 285
    .restart local v1    # "e":Ljava/lang/Throwable;
    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 290
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_1
    return-void
.end method

.method public preload()V
    .locals 1

    .line 63
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alipay/mobile/core/init/impl/BootLoaderImpl;->a(Z)V

    .line 64
    return-void
.end method
