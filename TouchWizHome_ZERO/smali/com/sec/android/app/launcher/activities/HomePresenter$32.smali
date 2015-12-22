.class Lcom/sec/android/app/launcher/activities/HomePresenter$32;
.super Ljava/lang/Object;
.source "HomePresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/HomePresenter;->surfaceChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

.field final synthetic val$cellGapX:I

.field final synthetic val$cellGapY:I

.field final synthetic val$cellHeight:I

.field final synthetic val$cellWidth:I

.field final synthetic val$pagePadding:Landroid/graphics/Rect;

.field final synthetic val$pp:Lcom/sec/android/app/launcher/activities/PagePresenter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/activities/HomePresenter;Lcom/sec/android/app/launcher/activities/PagePresenter;IIIILandroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$32;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    iput-object p2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$32;->val$pp:Lcom/sec/android/app/launcher/activities/PagePresenter;

    iput p3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$32;->val$cellWidth:I

    iput p4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$32;->val$cellHeight:I

    iput p5, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$32;->val$cellGapX:I

    iput p6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$32;->val$cellGapY:I

    iput-object p7, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$32;->val$pagePadding:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$32;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$32;->val$pp:Lcom/sec/android/app/launcher/activities/PagePresenter;

    iget v2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$32;->val$cellWidth:I

    iget v3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$32;->val$cellHeight:I

    iget v4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$32;->val$cellGapX:I

    iget v5, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$32;->val$cellGapY:I

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$32;->val$pagePadding:Landroid/graphics/Rect;

    # invokes: Lcom/sec/android/app/launcher/activities/HomePresenter;->updatePage(Lcom/sec/android/app/launcher/activities/PagePresenter;IIIILandroid/graphics/Rect;)V
    invoke-static/range {v0 .. v6}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$7700(Lcom/sec/android/app/launcher/activities/HomePresenter;Lcom/sec/android/app/launcher/activities/PagePresenter;IIIILandroid/graphics/Rect;)V

    return-void
.end method
