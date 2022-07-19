.class final Lcom/alipay/mobile/common/transport/utils/PreURLConnectionUtils$1;
.super Ljava/lang/Object;
.source "PreURLConnectionUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/common/transport/utils/PreURLConnectionUtils;->asyncPreConnection(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/utils/PreURLConnectionUtils$1;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/utils/PreURLConnectionUtils$1;->val$url:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/PreURLConnectionUtils;->preConnection(Ljava/lang/String;)V

    .line 36
    return-void
.end method
