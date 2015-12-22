.class Lcom/android/systemui/statusbar/BaseStatusBar$16;
.super Ljava/lang/Object;
.source "BaseStatusBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/BaseStatusBar;->inflateViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/BaseStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$16;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    move-object v0, p1

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$16;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    new-instance v2, Lcom/android/systemui/statusbar/BaseStatusBar$16$1;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$16$1;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar$16;Landroid/view/View;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
