.class Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin$3;
.super Ljava/lang/Object;
.source "PersonalPageModePin.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;


# direct methods
.method constructor <init>(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin$3;->this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin$3;->this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;

    invoke-virtual {v0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;->finish()V

    return-void
.end method
