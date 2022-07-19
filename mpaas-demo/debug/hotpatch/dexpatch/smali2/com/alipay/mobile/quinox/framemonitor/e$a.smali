.class final Lcom/alipay/mobile/quinox/framemonitor/e$a;
.super Landroid/content/ContextWrapper;
.source "JerkHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/quinox/framemonitor/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/app/Application;


# direct methods
.method private constructor <init>(Landroid/app/Application;)V
    .locals 0
    .param p1, "application"    # Landroid/app/Application;

    .line 169
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 170
    iput-object p1, p0, Lcom/alipay/mobile/quinox/framemonitor/e$a;->a:Landroid/app/Application;

    .line 171
    return-void
.end method

.method static a(Landroid/content/Context;)Lcom/alipay/mobile/quinox/framemonitor/e$a;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 156
    move-object v0, p0

    .line 157
    .local v0, "appContext":Landroid/content/Context;
    :goto_0
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/app/Application;

    if-nez v1, :cond_0

    .line 158
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    .line 160
    :cond_0
    if-eqz v0, :cond_1

    .line 163
    new-instance v1, Lcom/alipay/mobile/quinox/framemonitor/e$a;

    move-object v2, v0

    check-cast v2, Landroid/app/Application;

    invoke-direct {v1, v2}, Lcom/alipay/mobile/quinox/framemonitor/e$a;-><init>(Landroid/app/Application;)V

    return-object v1

    .line 161
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "context is not application: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final getApplicationContext()Landroid/content/Context;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/alipay/mobile/quinox/framemonitor/e$a;->a:Landroid/app/Application;

    return-object v0
.end method
