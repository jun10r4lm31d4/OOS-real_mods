.class public Lorg/bouncycastle/jce/provider/AnnotatedException;
.super Ljava/lang/Exception;
.source ""

# interfaces
.implements Lorg/bouncycastle/jce/exception/zta;


# instance fields
.field private _underlyingException:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, <init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, _underlyingException:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method Gg()Ljava/lang/Throwable;
    .locals 0

    iget-object p0, p0, _underlyingException:Ljava/lang/Throwable;

    return-object p0
.end method

.method public getCause()Ljava/lang/Throwable;
    .locals 0

    iget-object p0, p0, _underlyingException:Ljava/lang/Throwable;

    return-object p0
.end method