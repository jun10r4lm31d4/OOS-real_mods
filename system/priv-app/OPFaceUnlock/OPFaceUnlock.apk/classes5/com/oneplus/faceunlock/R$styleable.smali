.class public final Lcom/oneplus/faceunlock/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/faceunlock/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final CenterCircleHollowView:[I

.field public static final CenterCircleHollowView_hollowHeight:I = 0x0

.field public static final CenterCircleHollowView_hollowWidth:I = 0x1

.field public static final CenterCircleHollowView_offsetX:I = 0x2

.field public static final CenterCircleHollowView_offsetY:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, CenterCircleHollowView:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f010006
        0x7f010007
        0x7f010008
        0x7f010009
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
