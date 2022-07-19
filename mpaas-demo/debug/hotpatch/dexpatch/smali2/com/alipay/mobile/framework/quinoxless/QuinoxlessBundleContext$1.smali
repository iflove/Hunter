.class Lcom/alipay/mobile/framework/quinoxless/QuinoxlessBundleContext$1;
.super Ljava/lang/Object;
.source "QuinoxlessBundleContext.java"

# interfaces
.implements Lcom/alipay/mobile/quinox/apkfile/ApkFileInputStreamCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/framework/quinoxless/QuinoxlessBundleContext;->a(Ljava/util/List;Ljava/util/Map;Lcom/alipay/mobile/quinox/bundle/IBundleOperator;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/framework/quinoxless/QuinoxlessBundleContext;

.field final synthetic val$bundleOperator:Lcom/alipay/mobile/quinox/bundle/IBundleOperator;

.field final synthetic val$bundles:Ljava/util/Map;

.field final synthetic val$slinks:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/framework/quinoxless/QuinoxlessBundleContext;Lcom/alipay/mobile/quinox/bundle/IBundleOperator;Ljava/util/List;Ljava/util/Map;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/framework/quinoxless/QuinoxlessBundleContext;

    .line 142
    iput-object p1, p0, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessBundleContext$1;->this$0:Lcom/alipay/mobile/framework/quinoxless/QuinoxlessBundleContext;

    iput-object p2, p0, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessBundleContext$1;->val$bundleOperator:Lcom/alipay/mobile/quinox/bundle/IBundleOperator;

    iput-object p3, p0, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessBundleContext$1;->val$slinks:Ljava/util/List;

    iput-object p4, p0, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessBundleContext$1;->val$bundles:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInputStream(Ljava/io/InputStream;)Z
    .locals 4
    .param p1, "is"    # Ljava/io/InputStream;

    .line 146
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessBundleContext$1;->val$bundleOperator:Lcom/alipay/mobile/quinox/bundle/IBundleOperator;

    iget-object v2, p0, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessBundleContext$1;->val$slinks:Ljava/util/List;

    iget-object v3, p0, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessBundleContext$1;->val$bundles:Ljava/util/Map;

    invoke-interface {v1, p1, v2, v3}, Lcom/alipay/mobile/quinox/bundle/IBundleOperator;->readBundlesFromInputStream(Ljava/io/InputStream;Ljava/util/List;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    return v0

    .line 150
    :catchall_0
    move-exception v1

    .line 151
    .local v1, "t":Ljava/lang/Throwable;
    sget-object v2, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessBundleContext;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 152
    iget-object v2, p0, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessBundleContext$1;->val$slinks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 153
    iget-object v2, p0, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessBundleContext$1;->val$bundles:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 154
    return v0

    .line 148
    .end local v1    # "t":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    .line 149
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    return v1
.end method
