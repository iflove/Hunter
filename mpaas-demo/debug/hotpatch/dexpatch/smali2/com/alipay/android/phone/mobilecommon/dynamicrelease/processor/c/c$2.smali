.class final Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/c$2;
.super Ljava/lang/Object;
.source "ResourceFetcher.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/c;->a(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/b;Ljava/io/File;Ljava/lang/String;Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c;Lcom/alipay/mobile/common/transport/TransportCallback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/c;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/c;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/c;

    .line 365
    iput-object p1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/c$2;->b:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/c;

    iput-object p2, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/c$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "filename"    # Ljava/lang/String;

    .line 368
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/c$2;->a:Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/alipay/mobile/quinox/utils/StringUtil;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method
