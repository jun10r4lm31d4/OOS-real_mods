.class final synthetic Lcom/oneplus/faceunlock/engine/SenseTimeFaceEngine$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static final $instance:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/oneplus/faceunlock/engine/SenseTimeFaceEngine$$Lambda$0;

    invoke-direct {v0}, <init>()V

    sput-object v0, $instance:Ljava/lang/Runnable;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    invoke-static {}, Lcom/oneplus/faceunlock/engine/SenseTimeFaceEngine;->bridge$lambda$0$SenseTimeFaceEngine()V

    return-void
.end method
