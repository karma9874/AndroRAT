.class Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$1;
.super Ljava/lang/Object;
.source "CircularProgressDrawable.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->setupAnimators()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

.field final synthetic val$ring:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;


# direct methods
.method constructor <init>(Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    .line 568
    iput-object p1, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$1;->this$0:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    iput-object p2, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$1;->val$ring:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 571
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 572
    .local v0, "interpolatedTime":F
    iget-object v1, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$1;->this$0:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    iget-object v2, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$1;->val$ring:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v1, v0, v2}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->updateRingColor(FLandroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;)V

    .line 573
    iget-object v1, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$1;->this$0:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    iget-object v2, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$1;->val$ring:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->applyTransformation(FLandroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;Z)V

    .line 574
    iget-object v1, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$1;->this$0:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    invoke-virtual {v1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->invalidateSelf()V

    .line 575
    return-void
.end method
