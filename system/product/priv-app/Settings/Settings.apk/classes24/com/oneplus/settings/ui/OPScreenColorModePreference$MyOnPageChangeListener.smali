.class public Lcom/oneplus/settings/ui/OPScreenColorModePreference$MyOnPageChangeListener;
.super Ljava/lang/Object;
.source "OPScreenColorModePreference.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/ui/OPScreenColorModePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyOnPageChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/ui/OPScreenColorModePreference;


# direct methods
.method public constructor <init>(Lcom/oneplus/settings/ui/OPScreenColorModePreference;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/oneplus/settings/ui/OPScreenColorModePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 2

    iget-object v0, p0, this$0:Lcom/oneplus/settings/ui/OPScreenColorModePreference;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPScreenColorModePreference;->access$100(Lcom/oneplus/settings/ui/OPScreenColorModePreference;)Lcom/oneplus/lib/design/widget/OPPageIndicator;

    move-result-object v0

    int-to-float v1, p1

    add-float/2addr v1, p2

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->setLocation(F)V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    iget-object v0, p0, this$0:Lcom/oneplus/settings/ui/OPScreenColorModePreference;

    invoke-static {v0, p1}, Lcom/oneplus/settings/ui/OPScreenColorModePreference;->access$002(Lcom/oneplus/settings/ui/OPScreenColorModePreference;I)I

    return-void
.end method
