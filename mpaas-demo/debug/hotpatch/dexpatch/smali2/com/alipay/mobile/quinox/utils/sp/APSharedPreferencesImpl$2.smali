.class Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl$2;
.super Ljava/lang/Object;
.source "APSharedPreferencesImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->startLoadFromDisk()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;

    .line 137
    iput-object p1, p0, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl$2;->this$0:Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl$2;->this$0:Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;

    # invokes: Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->loadFromDisk()V
    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->access$000(Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;)V

    .line 141
    return-void
.end method
