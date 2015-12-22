.class Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter$2;
.super Ljava/lang/Object;
.source "HomeZeroPagePresenter.java"

# interfaces
.implements Lcom/sec/daliviews/views/NativeViewBase$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->setupHomeZeroPageDualCheckBox()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter$2;->this$0:Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/sec/daliviews/views/NativeViewBase;)Z
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter$2;->this$0:Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;

    const/4 v2, 0x0

    # invokes: Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->updateHomeZeroPageDualCheck(I)V
    invoke-static {v1, v2}, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->access$200(Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;I)V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getZeroPageList()Ljava/util/List;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getZeroPosition()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/data/ZeroPageListItem;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter$2;->this$0:Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/launcher/activities/HomeZeroPagePresenter;->setZeroItem(Lcom/sec/android/app/launcher/data/ZeroPageListItem;)V

    const/4 v1, 0x1

    return v1
.end method
