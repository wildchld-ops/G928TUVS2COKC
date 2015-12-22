.class Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword$2;
.super Ljava/lang/Object;
.source "PersonalPageModePassword.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;


# direct methods
.method constructor <init>(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword$2;->this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword$2;->this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;

    invoke-virtual {v0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;->verifyPassword()V

    return-void
.end method
