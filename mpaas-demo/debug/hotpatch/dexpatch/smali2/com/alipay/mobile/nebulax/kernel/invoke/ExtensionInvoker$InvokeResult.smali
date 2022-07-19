.class public Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker$InvokeResult;
.super Ljava/lang/Object;
.source "ExtensionInvoker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InvokeResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private isPending:Z

.field private result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(ZLjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZTT;)V"
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-boolean p1, p0, Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker$InvokeResult;->isPending:Z

    .line 62
    iput-object p2, p0, Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker$InvokeResult;->result:Ljava/lang/Object;

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker$InvokeResult;)Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker$InvokeResult;->isPending:Z

    return p0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker$InvokeResult;)Ljava/lang/Object;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker$InvokeResult;->result:Ljava/lang/Object;

    return-object p0
.end method

.method public static decide(Ljava/lang/Object;)Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker$InvokeResult;
    .locals 2

    .line 43
    new-instance v0, Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker$InvokeResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker$InvokeResult;-><init>(ZLjava/lang/Object;)V

    return-object v0
.end method

.method public static pending()Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker$InvokeResult;
    .locals 3

    .line 57
    new-instance v0, Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker$InvokeResult;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker$InvokeResult;-><init>(ZLjava/lang/Object;)V

    return-object v0
.end method

.method public static proceed()Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker$InvokeResult;
    .locals 1

    .line 50
    const/4 v0, 0x0

    return-object v0
.end method
