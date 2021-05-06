.class Landroidx/viewpager/widget/ViewPager$PagerObserver;
.super Landroid/database/DataSetObserver;
.source "ViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/viewpager/widget/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PagerObserver"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method constructor <init>(Landroidx/viewpager/widget/ViewPager;)V
    .locals 0

    .line 3092
    iput-object p1, p0, Landroidx/viewpager/widget/ViewPager$PagerObserver;->this$0:Landroidx/viewpager/widget/ViewPager;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 3093
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 3097
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager$PagerObserver;->this$0:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->dataSetChanged()V

    .line 3098
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .line 3101
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager$PagerObserver;->this$0:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->dataSetChanged()V

    .line 3102
    return-void
.end method
