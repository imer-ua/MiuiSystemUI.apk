.class Lcom/android/keyguard/MiuiLockPatternView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "MiuiLockPatternView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/MiuiLockPatternView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/MiuiLockPatternView$SavedState$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/keyguard/MiuiLockPatternView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDisplayMode:I

.field private final mInStealthMode:Z

.field private final mInputEnabled:Z

.field private final mSerializedPattern:Ljava/lang/String;

.field private final mTactileFeedbackEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1271
    new-instance v0, Lcom/android/keyguard/MiuiLockPatternView$SavedState$1;

    invoke-direct {v0}, Lcom/android/keyguard/MiuiLockPatternView$SavedState$1;-><init>()V

    .line 1270
    sput-object v0, Lcom/android/keyguard/MiuiLockPatternView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1206
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x0

    .line 1231
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 1232
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/MiuiLockPatternView$SavedState;->mSerializedPattern:Ljava/lang/String;

    .line 1233
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/MiuiLockPatternView$SavedState;->mDisplayMode:I

    .line 1234
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/MiuiLockPatternView$SavedState;->mInputEnabled:Z

    .line 1235
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/MiuiLockPatternView$SavedState;->mInStealthMode:Z

    .line 1236
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/MiuiLockPatternView$SavedState;->mTactileFeedbackEnabled:Z

    .line 1230
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/keyguard/MiuiLockPatternView$SavedState;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/keyguard/MiuiLockPatternView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcelable;Ljava/lang/String;IZZZ)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;
    .param p2, "serializedPattern"    # Ljava/lang/String;
    .param p3, "displayMode"    # I
    .param p4, "inputEnabled"    # Z
    .param p5, "inStealthMode"    # Z
    .param p6, "tactileFeedbackEnabled"    # Z

    .prologue
    .line 1219
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1220
    iput-object p2, p0, Lcom/android/keyguard/MiuiLockPatternView$SavedState;->mSerializedPattern:Ljava/lang/String;

    .line 1221
    iput p3, p0, Lcom/android/keyguard/MiuiLockPatternView$SavedState;->mDisplayMode:I

    .line 1222
    iput-boolean p4, p0, Lcom/android/keyguard/MiuiLockPatternView$SavedState;->mInputEnabled:Z

    .line 1223
    iput-boolean p5, p0, Lcom/android/keyguard/MiuiLockPatternView$SavedState;->mInStealthMode:Z

    .line 1224
    iput-boolean p6, p0, Lcom/android/keyguard/MiuiLockPatternView$SavedState;->mTactileFeedbackEnabled:Z

    .line 1218
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;Ljava/lang/String;IZZZLcom/android/keyguard/MiuiLockPatternView$SavedState;)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;
    .param p2, "serializedPattern"    # Ljava/lang/String;
    .param p3, "displayMode"    # I
    .param p4, "inputEnabled"    # Z
    .param p5, "inStealthMode"    # Z
    .param p6, "tactileFeedbackEnabled"    # Z

    .prologue
    invoke-direct/range {p0 .. p6}, Lcom/android/keyguard/MiuiLockPatternView$SavedState;-><init>(Landroid/os/Parcelable;Ljava/lang/String;IZZZ)V

    return-void
.end method


# virtual methods
.method public getDisplayMode()I
    .locals 1

    .prologue
    .line 1244
    iget v0, p0, Lcom/android/keyguard/MiuiLockPatternView$SavedState;->mDisplayMode:I

    return v0
.end method

.method public isInStealthMode()Z
    .locals 1

    .prologue
    .line 1252
    iget-boolean v0, p0, Lcom/android/keyguard/MiuiLockPatternView$SavedState;->mInStealthMode:Z

    return v0
.end method

.method public isInputEnabled()Z
    .locals 1

    .prologue
    .line 1248
    iget-boolean v0, p0, Lcom/android/keyguard/MiuiLockPatternView$SavedState;->mInputEnabled:Z

    return v0
.end method

.method public isTactileFeedbackEnabled()Z
    .locals 1

    .prologue
    .line 1256
    iget-boolean v0, p0, Lcom/android/keyguard/MiuiLockPatternView$SavedState;->mTactileFeedbackEnabled:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 1261
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1262
    iget-object v0, p0, Lcom/android/keyguard/MiuiLockPatternView$SavedState;->mSerializedPattern:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1263
    iget v0, p0, Lcom/android/keyguard/MiuiLockPatternView$SavedState;->mDisplayMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1264
    iget-boolean v0, p0, Lcom/android/keyguard/MiuiLockPatternView$SavedState;->mInputEnabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 1265
    iget-boolean v0, p0, Lcom/android/keyguard/MiuiLockPatternView$SavedState;->mInStealthMode:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 1266
    iget-boolean v0, p0, Lcom/android/keyguard/MiuiLockPatternView$SavedState;->mTactileFeedbackEnabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 1260
    return-void
.end method
