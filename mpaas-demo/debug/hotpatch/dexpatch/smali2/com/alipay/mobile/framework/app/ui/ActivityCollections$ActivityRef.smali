.class Lcom/alipay/mobile/framework/app/ui/ActivityCollections$ActivityRef;
.super Ljava/lang/ref/WeakReference;
.source "ActivityCollections.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/framework/app/ui/ActivityCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActivityRef"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference<",
        "Landroid/app/Activity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/framework/app/ui/ActivityCollections;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/framework/app/ui/ActivityCollections;Landroid/app/Activity;)V
    .locals 0
    .param p2, "r"    # Landroid/app/Activity;

    .line 141
    iput-object p1, p0, Lcom/alipay/mobile/framework/app/ui/ActivityCollections$ActivityRef;->this$0:Lcom/alipay/mobile/framework/app/ui/ActivityCollections;

    .line 142
    invoke-direct {p0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 143
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/framework/app/ui/ActivityCollections;Landroid/app/Activity;Ljava/lang/ref/ReferenceQueue;)V
    .locals 0
    .param p2, "r"    # Landroid/app/Activity;
    .param p3, "q"    # Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/ref/ReferenceQueue<",
            "-",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .line 145
    iput-object p1, p0, Lcom/alipay/mobile/framework/app/ui/ActivityCollections$ActivityRef;->this$0:Lcom/alipay/mobile/framework/app/ui/ActivityCollections;

    .line 146
    invoke-direct {p0, p2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 147
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 151
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/app/ui/ActivityCollections$ActivityRef;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x0

    .line 152
    .local v1, "activity":Landroid/app/Activity;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 155
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
