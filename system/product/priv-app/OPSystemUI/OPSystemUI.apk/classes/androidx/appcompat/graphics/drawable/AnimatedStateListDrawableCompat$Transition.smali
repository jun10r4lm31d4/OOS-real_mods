.class abstract Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$Transition;
.super Ljava/lang/Object;
.source "AnimatedStateListDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Transition"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$1;)V
    .locals 0

    invoke-direct {p0}, <init>()V

    return-void
.end method


# virtual methods
.method public canReverse()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public reverse()V
    .locals 0

    return-void
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method
