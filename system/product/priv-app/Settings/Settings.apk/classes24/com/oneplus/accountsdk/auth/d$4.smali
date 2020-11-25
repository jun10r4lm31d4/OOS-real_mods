.class final Lcom/oneplus/accountsdk/auth/d$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/oneplus/accountbase/network/callback/OPHttpCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/accountsdk/auth/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oneplus/accountbase/network/callback/OPHttpCallback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/oneplus/accountsdk/auth/OPAuthListener;

.field final synthetic b:Lcom/oneplus/accountsdk/auth/d;


# direct methods
.method constructor <init>(Lcom/oneplus/accountsdk/auth/d;Lcom/oneplus/accountsdk/auth/OPAuthListener;)V
    .locals 0

    iput-object p1, p0, b:Lcom/oneplus/accountsdk/auth/d;

    iput-object p2, p0, a:Lcom/oneplus/accountsdk/auth/OPAuthListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Lokhttp3/Call;Ljava/lang/Exception;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/oneplus/accountsdk/utils/OnePlusAuthLogUtils;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, a:Lcom/oneplus/accountsdk/auth/OPAuthListener;

    const-string p2, "2002"

    invoke-static {p2, p1}, Lcom/oneplus/accountsdk/auth/d;->a(Ljava/lang/String;Lcom/oneplus/accountsdk/auth/OPAuthListener;)V

    return-void
.end method

.method public final synthetic onResponse(Lokhttp3/Call;Ljava/lang/Object;)V
    .locals 1

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "empty"

    invoke-static {p2, p1}, Lcom/oneplus/accountsdk/utils/OnePlusAuthLogUtils;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, a:Lcom/oneplus/accountsdk/auth/OPAuthListener;

    const-string p2, "2002"

    invoke-static {p2, p1}, Lcom/oneplus/accountsdk/auth/d;->a(Ljava/lang/String;Lcom/oneplus/accountsdk/auth/OPAuthListener;)V

    return-void

    :cond_0
    new-instance p1, Lcom/oneplus/accountsdk/entity/ModifyUserNameInfo;

    invoke-direct {p1}, Lcom/oneplus/accountsdk/entity/ModifyUserNameInfo;-><init>()V

    const-string v0, "1000"

    iput-object v0, p1, Lcom/oneplus/accountsdk/entity/ModifyUserNameInfo;->resultCode:Ljava/lang/String;

    invoke-static {v0}, Lcom/oneplus/accountsdk/auth/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/oneplus/accountsdk/entity/ModifyUserNameInfo;->resultMsg:Ljava/lang/String;

    iput-object p2, p1, Lcom/oneplus/accountsdk/entity/ModifyUserNameInfo;->jsonString:Ljava/lang/String;

    iget-object p2, p0, a:Lcom/oneplus/accountsdk/auth/OPAuthListener;

    if-eqz p2, :cond_1

    invoke-interface {p2, p1}, Lcom/oneplus/accountsdk/auth/OPAuthListener;->onReqFinish(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
