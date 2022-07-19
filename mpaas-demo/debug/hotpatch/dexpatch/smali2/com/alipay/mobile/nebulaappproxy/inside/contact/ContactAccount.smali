.class public Lcom/alipay/mobile/nebulaappproxy/inside/contact/ContactAccount;
.super Ljava/lang/Object;
.source "ContactAccount.java"


# instance fields
.field public name:Ljava/lang/String;

.field public phoneNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/inside/contact/ContactAccount;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/inside/contact/ContactAccount;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 20
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/inside/contact/ContactAccount;->name:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .line 12
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/inside/contact/ContactAccount;->phoneNumber:Ljava/lang/String;

    .line 13
    return-void
.end method
