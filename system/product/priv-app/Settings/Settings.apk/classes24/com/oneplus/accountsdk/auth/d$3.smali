.class final Lcom/oneplus/accountsdk/auth/d$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/oneplus/accountsdk/auth/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/accountsdk/auth/d;->a(Landroid/content/Context;Ljava/lang/String;Lcom/oneplus/accountsdk/auth/OPAuthListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/oneplus/accountsdk/auth/OPAuthListener;

.field final synthetic c:Lcom/oneplus/accountsdk/auth/d;


# direct methods
.method constructor <init>(Lcom/oneplus/accountsdk/auth/d;Ljava/lang/String;Lcom/oneplus/accountsdk/auth/OPAuthListener;)V
    .locals 0

    iput-object p1, p0, c:Lcom/oneplus/accountsdk/auth/d;

    iput-object p2, p0, a:Ljava/lang/String;

    iput-object p3, p0, b:Lcom/oneplus/accountsdk/auth/OPAuthListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, b:Lcom/oneplus/accountsdk/auth/OPAuthListener;

    const-string v1, "1003"

    invoke-static {v1, v0}, Lcom/oneplus/accountsdk/auth/d;->a(Ljava/lang/String;Lcom/oneplus/accountsdk/auth/OPAuthListener;)V

    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 3

    new-instance v0, Lcom/oneplus/accountsdk/entity/UserTokenInfo;

    invoke-direct {v0}, Lcom/oneplus/accountsdk/entity/UserTokenInfo;-><init>()V

    const-string v0, "authtoken"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, c:Lcom/oneplus/accountsdk/auth/d;

    iget-object v1, p0, a:Ljava/lang/String;

    iget-object v2, p0, b:Lcom/oneplus/accountsdk/auth/OPAuthListener;

    invoke-static {v0, p1, v1, v2}, Lcom/oneplus/accountsdk/auth/d;->a(Lcom/oneplus/accountsdk/auth/d;Ljava/lang/String;Ljava/lang/String;Lcom/oneplus/accountsdk/auth/OPAuthListener;)V

    return-void

    :cond_0
    iget-object p1, p0, b:Lcom/oneplus/accountsdk/auth/OPAuthListener;

    const-string v0, "1003"

    invoke-static {v0, p1}, Lcom/oneplus/accountsdk/auth/d;->a(Ljava/lang/String;Lcom/oneplus/accountsdk/auth/OPAuthListener;)V

    return-void
.end method