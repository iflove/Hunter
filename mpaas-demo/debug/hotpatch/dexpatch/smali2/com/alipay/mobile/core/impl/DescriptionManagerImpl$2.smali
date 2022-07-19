.class Lcom/alipay/mobile/core/impl/DescriptionManagerImpl$2;
.super Ljava/lang/Object;
.source "DescriptionManagerImpl.java"

# interfaces
.implements Landroid/util/Printer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->a(Ljava/lang/String;)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;

.field final synthetic val$readerMsg:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;Ljava/lang/StringBuilder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;

    .line 489
    iput-object p1, p0, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl$2;->this$0:Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;

    iput-object p2, p0, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl$2;->val$readerMsg:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public println(Ljava/lang/String;)V
    .locals 2
    .param p1, "x"    # Ljava/lang/String;

    .line 492
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl$2;->val$readerMsg:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    return-void
.end method
