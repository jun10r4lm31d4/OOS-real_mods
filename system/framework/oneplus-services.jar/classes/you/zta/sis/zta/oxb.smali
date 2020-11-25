.class Lyou/zta/sis/zta/oxb;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lyou/zta/sis/zta/ugm;


# static fields
.field static final rSa:Ljava/lang/String; = "bc_validity"


# instance fields
.field private ATa:Z

.field private BTa:Z

.field private CTa:Z


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, ATa:Z

    iput-boolean v0, p0, BTa:Z

    iput-boolean v0, p0, CTa:Z

    return-void
.end method


# virtual methods
.method ul()Z
    .locals 0

    iget-boolean p0, p0, BTa:Z

    return p0
.end method

.method vl()Z
    .locals 0

    iget-boolean p0, p0, ATa:Z

    return p0
.end method

.method wl()Z
    .locals 0

    iget-boolean p0, p0, CTa:Z

    return p0
.end method

.method xl()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, BTa:Z

    return-void
.end method

.method yl()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, ATa:Z

    return-void
.end method

.method zl()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, CTa:Z

    return-void
.end method
