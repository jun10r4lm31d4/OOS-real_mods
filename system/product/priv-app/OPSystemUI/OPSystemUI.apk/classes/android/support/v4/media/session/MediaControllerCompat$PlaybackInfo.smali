.class public final Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;
.super Ljava/lang/Object;
.source "MediaControllerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaControllerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlaybackInfo"
.end annotation


# instance fields
.field private final mAudioAttrsCompat:Landroidx/media/AudioAttributesCompat;

.field private final mCurrentVolume:I

.field private final mMaxVolume:I

.field private final mPlaybackType:I

.field private final mVolumeControl:I


# direct methods
.method constructor <init>(IIIII)V
    .locals 7

    new-instance v0, Landroidx/media/AudioAttributesCompat$Builder;

    invoke-direct {v0}, Landroidx/media/AudioAttributesCompat$Builder;-><init>()V

    invoke-virtual {v0, p2}, Landroidx/media/AudioAttributesCompat$Builder;->setLegacyStreamType(I)Landroidx/media/AudioAttributesCompat$Builder;

    invoke-virtual {v0}, Landroidx/media/AudioAttributesCompat$Builder;->build()Landroidx/media/AudioAttributesCompat;

    move-result-object v3

    move-object v1, p0

    move v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, <init>(ILandroidx/media/AudioAttributesCompat;III)V

    return-void
.end method

.method constructor <init>(ILandroidx/media/AudioAttributesCompat;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, mPlaybackType:I

    iput-object p2, p0, mAudioAttrsCompat:Landroidx/media/AudioAttributesCompat;

    iput p3, p0, mVolumeControl:I

    iput p4, p0, mMaxVolume:I

    iput p5, p0, mCurrentVolume:I

    return-void
.end method
