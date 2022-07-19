.class Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper$InnerPhoneStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "SignalStateHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InnerPhoneStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper;

    .line 197
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper$InnerPhoneStateListener;->this$0:Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 7
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    const-string v0, "SSMonitor"

    .line 201
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    .line 205
    :try_start_0
    const-class v1, Landroid/telephony/SignalStrength;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    .line 206
    .local v2, "classSignalStrength":Ljava/lang/Class;
    move-object v2, v1

    const-string v3, "getLevel"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 207
    .local v1, "methodGetLevel":Ljava/lang/reflect/Method;
    const-string v3, "getDbm"

    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 208
    .local v3, "methodGetDbm":Ljava/lang/reflect/Method;
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 209
    invoke-virtual {v3, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 210
    iget-object v5, p0, Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper$InnerPhoneStateListener;->this$0:Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper;

    new-array v6, v4, [Ljava/lang/Object;

    invoke-virtual {v3, p1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    # setter for: Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper;->d:I
    invoke-static {v5, v6}, Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper;->access$202(Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper;I)I

    .line 211
    iget-object v5, p0, Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper$InnerPhoneStateListener;->this$0:Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    # setter for: Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper;->c:I
    invoke-static {v5, v4}, Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper;->access$302(Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper;I)I

    .line 212
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SS Updated: dbm=["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper$InnerPhoneStateListener;->this$0:Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper;

    # getter for: Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper;->d:I
    invoke-static {v5}, Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper;->access$200(Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] sLevel=["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper$InnerPhoneStateListener;->this$0:Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper;

    # getter for: Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper;->c:I
    invoke-static {v5}, Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper;->access$300(Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    .end local v1    # "methodGetLevel":Ljava/lang/reflect/Method;
    .end local v2    # "classSignalStrength":Ljava/lang/Class;
    .end local v3    # "methodGetDbm":Ljava/lang/reflect/Method;
    return-void

    .line 213
    :catchall_0
    move-exception v1

    .line 214
    .local v1, "e":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to invoke methods:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    .end local v1    # "e":Ljava/lang/Throwable;
    return-void
.end method
