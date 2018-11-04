.class public Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;
.super Ljava/lang/Object;
.source "MiuiVolumeDialogImpl.java"

# interfaces
.implements Lcom/android/systemui/plugins/VolumeDialog;
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$1;,
        Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$2;,
        Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$3;,
        Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$Accessibility;,
        Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$CustomDialog;,
        Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$H;,
        Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$SilenceModeObserver;,
        Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;,
        Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumns;,
        Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeSeekBarChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAccessibility:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$Accessibility;

.field private final mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

.field private mActiveStream:I

.field private final mAudioManager:Landroid/media/AudioManager;

.field private mAutomute:Z

.field private final mClickExpand:Landroid/view/View$OnClickListener;

.field private final mColumns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;",
            ">;"
        }
    .end annotation
.end field

.field private mConfigurableTexts:Lcom/android/systemui/volume/ConfigurableTexts;

.field private final mContext:Landroid/content/Context;

.field private mController:Lcom/android/systemui/plugins/VolumeDialogController;

.field private final mControllerCallbackH:Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;

.field private mDensity:I

.field private mDialog:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$CustomDialog;

.field private mDialogColumns:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumns;

.field private mDialogContentView:Landroid/view/ViewGroup;

.field private mDialogView:Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;

.field private final mDynamic:Landroid/util/SparseBooleanArray;

.field private mExpandButton:Landroid/widget/ImageView;

.field private mExpanded:Z

.field private final mHandler:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$H;

.field private mHovering:Z

.field private mIconTintDark:Landroid/content/res/ColorStateList;

.field private final mKeyguard:Landroid/app/KeyguardManager;

.field private final mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

.field private mLockRecordTypes:I

.field private mMutedColorList:Landroid/content/res/ColorStateList;

.field private mOrientation:I

.field private mPendingRecheckAll:Z

.field private mPendingStateChanged:Z

.field private mRingerModeChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

.field private final mSafetyWarningLock:Ljava/lang/Object;

.field private mShowA11yStream:Z

.field private mShowing:Z

.field private mSilenceModeObserver:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$SilenceModeObserver;

.field private mSilentMode:Z

.field private mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

.field private mTempColumn:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;

.field private mTempColumnContainer:Landroid/widget/FrameLayout;

.field private mWindow:Landroid/view/Window;

.field private mWindowType:I


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$Accessibility;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mAccessibility:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$Accessibility;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$H;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mHandler:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$H;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mIconTintDark:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mOrientation:I

    return v0
.end method

.method static synthetic -get13(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mPendingRecheckAll:Z

    return v0
.end method

.method static synthetic -get14(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mPendingStateChanged:Z

    return v0
.end method

.method static synthetic -get15(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mSafetyWarningLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get16(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mShowing:Z

    return v0
.end method

.method static synthetic -get17(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mSilentMode:Z

    return v0
.end method

.method static synthetic -get18(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)Lcom/android/systemui/plugins/VolumeDialogController$State;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)Landroid/view/accessibility/AccessibilityManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)Lcom/android/systemui/volume/ConfigurableTexts;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mConfigurableTexts:Lcom/android/systemui/volume/ConfigurableTexts;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)Lcom/android/systemui/plugins/VolumeDialogController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mDensity:I

    return v0
.end method

.method static synthetic -get7(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$CustomDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mDialog:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$CustomDialog;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mDialogView:Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mExpanded:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mActiveStream:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mDensity:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mHovering:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mOrientation:I

    return p1
.end method

.method static synthetic -set4(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mPendingRecheckAll:Z

    return p1
.end method

.method static synthetic -set5(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mPendingStateChanged:Z

    return p1
.end method

.method static synthetic -set6(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;Lcom/android/systemui/volume/SafetyWarningDialog;)Lcom/android/systemui/volume/SafetyWarningDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    return-object p1
.end method

.method static synthetic -set7(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mShowA11yStream:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->getActiveColumn()Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/widget/SeekBar;I)I
    .locals 1
    .param p0, "seekBar"    # Landroid/widget/SeekBar;
    .param p1, "progress"    # I

    .prologue
    invoke-static {p0, p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->getImpliedLevel(Landroid/widget/SeekBar;I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;I)V
    .locals 0
    .param p1, "unlockType"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->unlockRecordType(I)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)V
    .locals 0
    .param p1, "activeColumn"    # Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->updateColumnH(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;ZZ)V
    .locals 0
    .param p1, "expanded"    # Z
    .param p2, "dismissing"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->updateExpandedH(ZZ)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->vibrateH()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;
    .locals 1
    .param p1, "ss"    # Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->initDialog()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;Lcom/android/systemui/plugins/VolumeDialogController$State;)V
    .locals 0
    .param p1, "state"    # Lcom/android/systemui/plugins/VolumeDialogController$State;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->onStateChangedH(Lcom/android/systemui/plugins/VolumeDialogController$State;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)V
    .locals 0
    .param p1, "column"    # Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->recheckH(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;IZ)V
    .locals 0
    .param p1, "stream"    # I
    .param p2, "fromKey"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->recordVolumeChanged(IZ)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;IZ)V
    .locals 0
    .param p1, "stream"    # I
    .param p2, "important"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->setStreamImportantH(IZ)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;I)V
    .locals 0
    .param p1, "reason"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->showH(I)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;I)V
    .locals 0
    .param p1, "flags"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->showSafetyWarningH(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 117
    const-class v0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/miui/volume/Util;->logTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->TAG:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    new-instance v0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$H;

    invoke-direct {v0, p0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$H;-><init>(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)V

    iput-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mHandler:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$H;

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mColumns:Ljava/util/List;

    .line 140
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mDynamic:Landroid/util/SparseBooleanArray;

    .line 145
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mSafetyWarningLock:Ljava/lang/Object;

    .line 146
    new-instance v0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$Accessibility;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$Accessibility;-><init>(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$Accessibility;)V

    iput-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mAccessibility:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$Accessibility;

    .line 156
    iput-boolean v3, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mAutomute:Z

    .line 157
    iput-boolean v3, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mSilentMode:Z

    .line 162
    iput-boolean v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mHovering:Z

    .line 172
    iput v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mLockRecordTypes:I

    .line 174
    new-instance v0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$SilenceModeObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$SilenceModeObserver;-><init>(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)V

    iput-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mSilenceModeObserver:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$SilenceModeObserver;

    .line 176
    new-instance v0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$1;-><init>(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)V

    iput-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mRingerModeChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 915
    new-instance v0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$2;-><init>(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)V

    .line 914
    iput-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mControllerCallbackH:Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;

    .line 1059
    new-instance v0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$3;-><init>(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)V

    iput-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mClickExpand:Landroid/view/View$OnClickListener;

    .line 194
    iput-object p1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mContext:Landroid/content/Context;

    .line 195
    const-class v0, Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/VolumeDialogController;

    iput-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    .line 196
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mKeyguard:Landroid/app/KeyguardManager;

    .line 197
    const-class v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iput-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 198
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mAudioManager:Landroid/media/AudioManager;

    .line 200
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 199
    iput-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

    .line 193
    return-void
.end method

.method private addColumn(IIIZ)V
    .locals 6
    .param p1, "stream"    # I
    .param p2, "iconRes"    # I
    .param p3, "iconMuteRes"    # I
    .param p4, "important"    # Z

    .prologue
    .line 372
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->addColumn(IIIZZ)V

    .line 371
    return-void
.end method

.method private addColumn(IIIZZ)V
    .locals 9
    .param p1, "stream"    # I
    .param p2, "iconRes"    # I
    .param p3, "iconMuteRes"    # I
    .param p4, "important"    # Z
    .param p5, "dynamic"    # Z

    .prologue
    const/4 v8, 0x1

    .line 377
    new-instance v1, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;-><init>(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)V

    .local v1, "column":Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;
    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 378
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->initColumn(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;IIIZ)V

    .line 381
    iget-boolean v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mShowA11yStream:Z

    if-eqz v0, :cond_0

    if-eqz p5, :cond_0

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mColumns:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    .local v6, "columnSize":I
    if-le v6, v8, :cond_0

    .line 382
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mDialogColumns:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumns;

    invoke-virtual {v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumns;->getCurrentParent()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    .local v7, "viewSize":I
    if-le v7, v8, :cond_0

    .line 384
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mDialogColumns:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumns;

    invoke-static {v1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get17(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)Landroid/view/View;

    move-result-object v2

    add-int/lit8 v3, v7, -0x2

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumns;->addView(Landroid/view/View;I)V

    .line 385
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mColumns:Ljava/util/List;

    add-int/lit8 v2, v6, -0x2

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 376
    .end local v6    # "columnSize":I
    .end local v7    # "viewSize":I
    :goto_0
    return-void

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mDialogColumns:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumns;

    invoke-static {v1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get17(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumns;->addView(Landroid/view/View;)V

    .line 388
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mColumns:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private addExistingColumns()V
    .locals 9

    .prologue
    .line 403
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mColumns:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    .line 404
    .local v7, "N":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v7, :cond_0

    .line 405
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mColumns:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;

    .line 406
    .local v1, "column":Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;
    invoke-static {v1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get14(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)I

    move-result v2

    invoke-static {v1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get10(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)I

    move-result v3

    invoke-static {v1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get9(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)I

    move-result v4

    invoke-static {v1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get8(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)Z

    move-result v5

    const/4 v6, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->initColumn(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;IIIZZ)V

    .line 407
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mDialogColumns:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumns;

    invoke-static {v1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get17(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumns;->addView(Landroid/view/View;)V

    .line 404
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 402
    .end local v1    # "column":Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;
    :cond_0
    return-void
.end method

.method private addTempColumn(IIIZ)V
    .locals 6
    .param p1, "stream"    # I
    .param p2, "iconRes"    # I
    .param p3, "iconMuteRes"    # I
    .param p4, "important"    # Z

    .prologue
    .line 393
    new-instance v1, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;-><init>(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)V

    .local v1, "column":Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;
    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 394
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->initColumn(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;IIIZ)V

    .line 395
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mTempColumnContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mTempColumnContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mTempColumnContainer:Landroid/widget/FrameLayout;

    invoke-static {v1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get17(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 399
    iput-object v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mTempColumn:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;

    .line 392
    return-void
.end method

.method private computeTimeoutH()I
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mAccessibility:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$Accessibility;

    invoke-static {v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$Accessibility;->-get0(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$Accessibility;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x4e20

    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mHovering:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x3e80

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    if-eqz v0, :cond_2

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "set_panel_full"

    invoke-static {v1, v2}, Landroid/preference/MiuiCoreSettingsPreference;->getKeyParam(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_4

    const/16 v0, 0x1388

    goto :goto_1

    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mExpanded:Z

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mContext:Landroid/content/Context;

    const-string v2, "set_panel_one"

    invoke-static {v1, v2}, Landroid/preference/MiuiCoreSettingsPreference;->getKeyParam(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_4

    const/16 v0, 0xbb8

    goto :goto_1

    :cond_4
    mul-int/lit16 v0, v0, 0x3e8

    :goto_1
    return v0
.end method

.method private findColumn(I)Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;
    .locals 3
    .param p1, "stream"    # I

    .prologue
    .line 421
    iget-object v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mColumns:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "column$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;

    .line 422
    .local v0, "column":Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;
    invoke-static {v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get14(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)I

    move-result v2

    if-ne v2, p1, :cond_0

    return-object v0

    .line 424
    .end local v0    # "column":Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private getActiveColumn()Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;
    .locals 4

    .prologue
    .line 412
    iget-object v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mColumns:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "column$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;

    .line 413
    .local v0, "column":Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;
    invoke-static {v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get14(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)I

    move-result v2

    iget v3, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mActiveStream:I

    if-ne v2, v3, :cond_0

    .line 414
    return-object v0

    .line 417
    .end local v0    # "column":Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mColumns:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;

    return-object v2
.end method

.method private static getImpliedLevel(Landroid/widget/SeekBar;I)I
    .locals 5
    .param p0, "seekBar"    # Landroid/widget/SeekBar;
    .param p1, "progress"    # I

    .prologue
    const/4 v0, 0x0

    .line 440
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    .line 441
    .local v1, "m":I
    div-int/lit8 v3, v1, 0x64

    add-int/lit8 v2, v3, -0x1

    .line 442
    .local v2, "n":I
    if-nez p1, :cond_0

    .line 444
    .local v0, "level":I
    :goto_0
    return v0

    .line 443
    .end local v0    # "level":I
    :cond_0
    if-ne p1, v1, :cond_1

    div-int/lit8 v0, v1, 0x64

    goto :goto_0

    :cond_1
    int-to-float v3, p1

    int-to-float v4, v1

    div-float/2addr v3, v4

    int-to-float v4, v2

    mul-float/2addr v3, v4

    float-to-int v3, v3

    add-int/lit8 v0, v3, 0x1

    goto :goto_0
.end method

.method private getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;
    .locals 4
    .param p1, "ss"    # Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    .prologue
    .line 903
    iget-object v1, p1, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->remoteLabel:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 904
    iget-object v1, p1, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->remoteLabel:Ljava/lang/String;

    return-object v1

    .line 907
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mContext:Landroid/content/Context;

    iget v2, p1, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->name:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 908
    :catch_0
    move-exception v0

    .line 909
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    sget-object v1, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Can\'t find translation for stream "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    const-string/jumbo v1, ""

    return-object v1
.end method

.method private initColumn(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;IIIZ)V
    .locals 7
    .param p1, "column"    # Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;
    .param p2, "stream"    # I
    .param p3, "iconRes"    # I
    .param p4, "iconMuteRes"    # I
    .param p5, "important"    # Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    .line 450
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->initColumn(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;IIIZZ)V

    .line 449
    return-void
.end method

.method private initColumn(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;IIIZZ)V
    .locals 5
    .param p1, "column"    # Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;
    .param p2, "stream"    # I
    .param p3, "iconRes"    # I
    .param p4, "iconMuteRes"    # I
    .param p5, "important"    # Z
    .param p6, "resetCacheIconRes"    # Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 456
    invoke-static {p1, p2}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-set16(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;I)I

    .line 457
    invoke-static {p1, p3}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-set11(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;I)I

    .line 458
    invoke-static {p1, p4}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-set10(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;I)I

    .line 459
    invoke-static {p1, p5}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-set9(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;Z)Z

    .line 460
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mDialog:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$CustomDialog;

    invoke-virtual {v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$CustomDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/miui/volume/R$layout;->miui_volume_dialog_column:I

    iget-object v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mDialogColumns:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumns;

    invoke-virtual {v2}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumns;->getCurrentParent()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-set19(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;Landroid/view/View;)Landroid/view/View;

    .line 461
    invoke-static {p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get17(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)Landroid/view/View;

    move-result-object v0

    invoke-static {p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get14(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 462
    invoke-static {p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get17(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 463
    invoke-static {p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get17(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/android/systemui/miui/volume/R$id;->volume_column_slider:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    invoke-static {p1, v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-set14(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;Landroid/widget/SeekBar;)Landroid/widget/SeekBar;

    .line 464
    invoke-static {p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get12(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)Landroid/widget/SeekBar;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeSeekBarChangeListener;

    invoke-direct {v1, p0, p1, v3}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeSeekBarChangeListener;-><init>(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeSeekBarChangeListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 465
    invoke-static {p1, v3}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-set0(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 468
    invoke-static {p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get17(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$6;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$6;-><init>(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 492
    invoke-static {p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get17(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/android/systemui/miui/volume/R$id;->volume_column_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-set5(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 493
    invoke-static {p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get5(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 494
    invoke-static {p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get14(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 495
    invoke-static {p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get5(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImportantForAccessibility(I)V

    .line 497
    :cond_0
    invoke-static {p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get12(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-static {p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get4(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 498
    if-eqz p6, :cond_1

    .line 499
    invoke-static {p1, v4}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-set2(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;I)I

    .line 500
    invoke-static {p1, v3}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-set3(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    .line 501
    invoke-static {p1, v3}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-set4(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    .line 455
    :cond_1
    return-void
.end method

.method private initDialog()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 240
    new-instance v0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$CustomDialog;

    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$CustomDialog;-><init>(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mDialog:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$CustomDialog;

    .line 241
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mDialog:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$CustomDialog;

    invoke-virtual {v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$CustomDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mWindow:Landroid/view/Window;

    .line 242
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v5}, Landroid/view/Window;->requestFeature(I)Z

    .line 244
    new-instance v0, Lcom/android/systemui/volume/ConfigurableTexts;

    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/ConfigurableTexts;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mConfigurableTexts:Lcom/android/systemui/volume/ConfigurableTexts;

    .line 245
    iput-boolean v4, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mHovering:Z

    .line 246
    iput-boolean v4, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mShowing:Z

    .line 247
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mDialog:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$CustomDialog;

    invoke-virtual {v0, v5}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$CustomDialog;->setCanceledOnTouchOutside(Z)V

    .line 248
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mDialog:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$CustomDialog;

    sget v1, Lcom/android/systemui/miui/volume/R$layout;->miui_volume_dialog:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$CustomDialog;->setContentView(I)V

    .line 249
    invoke-direct {p0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->setupWindowAttributes()V

    .line 251
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mDialog:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$CustomDialog;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 254
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mDialog:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$CustomDialog;

    sget v1, Lcom/android/systemui/miui/volume/R$id;->volume_dialog:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;

    iput-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mDialogView:Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;

    .line 255
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mDialogView:Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;

    new-instance v1, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$4;-><init>(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 265
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mDialog:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$CustomDialog;

    sget v1, Lcom/android/systemui/miui/volume/R$id;->volume_dialog_content:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mDialogContentView:Landroid/view/ViewGroup;

    .line 266
    new-instance v2, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumns;

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mDialogContentView:Landroid/view/ViewGroup;

    sget v1, Lcom/android/systemui/miui/volume/R$id;->volume_dialog_column_collapsed:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 267
    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mDialogContentView:Landroid/view/ViewGroup;

    sget v3, Lcom/android/systemui/miui/volume/R$id;->volume_dialog_columns:I

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 266
    invoke-direct {v2, v0, v1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumns;-><init>(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    iput-object v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mDialogColumns:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumns;

    .line 268
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mDialogView:Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;

    sget v1, Lcom/android/systemui/miui/volume/R$id;->volume_dialog_column_temp:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mTempColumnContainer:Landroid/widget/FrameLayout;

    .line 269
    iput-boolean v4, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mExpanded:Z

    .line 270
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mDialogView:Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;

    sget v1, Lcom/android/systemui/miui/volume/R$id;->volume_expand_button:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mExpandButton:Landroid/widget/ImageView;

    .line 271
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mExpandButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mClickExpand:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mDialogView:Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;

    .line 274
    new-instance v1, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$5;-><init>(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)V

    .line 273
    invoke-virtual {v0, v1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;->setMotionCallback(Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion$Callback;)V

    .line 304
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mColumns:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 306
    sget v0, Lcom/android/systemui/miui/volume/R$drawable;->ic_miui_volume_media:I

    sget v1, Lcom/android/systemui/miui/volume/R$drawable;->ic_miui_volume_media_mute:I

    .line 305
    invoke-direct {p0, v6, v0, v1, v5}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->addColumn(IIIZ)V

    .line 307
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/media/AudioSystemCompat;->isSingleVolume(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 309
    sget v0, Lcom/android/systemui/miui/volume/R$drawable;->ic_miui_volume_accessibility:I

    sget v1, Lcom/android/systemui/miui/volume/R$drawable;->ic_miui_volume_accessibility_mute:I

    .line 308
    const/16 v2, 0xa

    invoke-direct {p0, v2, v0, v1, v5}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->addColumn(IIIZ)V

    .line 311
    sget v0, Lcom/android/systemui/miui/volume/R$drawable;->ic_miui_volume_ringer:I

    sget v1, Lcom/android/systemui/miui/volume/R$drawable;->ic_miui_volume_ringer_mute:I

    .line 310
    const/4 v2, 0x2

    invoke-direct {p0, v2, v0, v1, v5}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->addColumn(IIIZ)V

    .line 313
    sget v0, Lcom/android/systemui/miui/volume/R$drawable;->ic_miui_volume_alarm:I

    sget v1, Lcom/android/systemui/miui/volume/R$drawable;->ic_miui_volume_alarm_mute:I

    .line 312
    const/4 v2, 0x4

    invoke-direct {p0, v2, v0, v1, v4}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->addColumn(IIIZ)V

    .line 315
    sget v0, Lcom/android/systemui/miui/volume/R$drawable;->ic_miui_volume_voice:I

    sget v1, Lcom/android/systemui/miui/volume/R$drawable;->ic_miui_volume_voice_mute:I

    .line 314
    invoke-direct {p0, v4, v0, v1, v4}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->addColumn(IIIZ)V

    .line 317
    sget v0, Lcom/android/systemui/miui/volume/R$drawable;->ic_miui_volume_voice:I

    sget v1, Lcom/android/systemui/miui/volume/R$drawable;->ic_miui_volume_voice_mute:I

    .line 316
    const/4 v2, 0x6

    invoke-direct {p0, v2, v0, v1, v4}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->addColumn(IIIZ)V

    sget v0, Lcom/android/systemui/miui/volume/R$drawable;->ic_miui_volume_speaker:I

    sget v1, Lcom/android/systemui/miui/volume/R$drawable;->ic_miui_volume_speaker_mute:I

    const/4 v2, 0x5

    invoke-direct {p0, v2, v0, v1, v5}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->addColumn(IIIZ)V

    .line 323
    :cond_0
    :goto_0
    sget v0, Lcom/android/systemui/miui/volume/R$drawable;->ic_miui_volume_media:I

    sget v1, Lcom/android/systemui/miui/volume/R$drawable;->ic_miui_volume_media_mute:I

    .line 322
    invoke-direct {p0, v6, v0, v1, v5}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->addTempColumn(IIIZ)V

    .line 324
    invoke-direct {p0, v4, v4, v5}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->updateExpandedH(ZZZ)V

    .line 239
    return-void

    .line 320
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->addExistingColumns()V

    goto :goto_0
.end method

.method private onStateChangedH(Lcom/android/systemui/plugins/VolumeDialogController$State;)V
    .locals 12
    .param p1, "state"    # Lcom/android/systemui/plugins/VolumeDialogController$State;

    .prologue
    const/4 v11, 0x0

    const/4 v4, 0x1

    .line 689
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mDialogView:Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;

    invoke-virtual {v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;->isAnimating()Z

    move-result v6

    .line 690
    .local v6, "animating":Z
    sget-boolean v0, Lcom/android/systemui/miui/volume/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onStateChangedH animating="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    .line 692
    if-eqz v6, :cond_1

    .line 693
    iput-boolean v4, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mPendingStateChanged:Z

    .line 694
    return-void

    .line 696
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mDynamic:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 698
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    iget-object v0, p1, Lcom/android/systemui/plugins/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v9, v0, :cond_4

    .line 699
    iget-object v0, p1, Lcom/android/systemui/plugins/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 700
    .local v1, "stream":I
    iget-object v0, p1, Lcom/android/systemui/plugins/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    .line 701
    .local v10, "ss":Lcom/android/systemui/plugins/VolumeDialogController$StreamState;
    iget-boolean v0, v10, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->dynamic:Z

    if-nez v0, :cond_3

    .line 698
    :cond_2
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 702
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mDynamic:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 703
    invoke-direct {p0, v1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->findColumn(I)Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;

    move-result-object v0

    if-nez v0, :cond_2

    .line 704
    sget v2, Lcom/android/systemui/miui/volume/R$drawable;->ic_miui_volume_media:I

    sget v3, Lcom/android/systemui/miui/volume/R$drawable;->ic_miui_volume_media_mute:I

    move-object v0, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->addColumn(IIIZZ)V

    goto :goto_1

    .line 709
    .end local v1    # "stream":I
    .end local v10    # "ss":Lcom/android/systemui/plugins/VolumeDialogController$StreamState;
    :cond_4
    iget v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mActiveStream:I

    iget v2, p1, Lcom/android/systemui/plugins/VolumeDialogController$State;->activeStream:I

    if-eq v0, v2, :cond_5

    .line 710
    iget v0, p1, Lcom/android/systemui/plugins/VolumeDialogController$State;->activeStream:I

    iput v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mActiveStream:I

    .line 711
    invoke-direct {p0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->getActiveColumn()Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->updateColumnH(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)V

    .line 712
    invoke-virtual {p0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->rescheduleTimeoutH()V

    .line 715
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mDialogView:Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;

    iget v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mActiveStream:I

    if-eqz v2, :cond_7

    .line 716
    iget v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mActiveStream:I

    const/4 v3, 0x6

    if-eq v2, v3, :cond_6

    .line 715
    :goto_2
    invoke-virtual {v0, v4}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;->updateFooterVisibility(Z)V

    .line 718
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mColumns:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "column$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;

    .line 719
    .local v7, "column":Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;
    invoke-direct {p0, v7}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->updateVolumeColumnH(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)V

    goto :goto_3

    .end local v7    # "column":Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;
    .end local v8    # "column$iterator":Ljava/util/Iterator;
    :cond_6
    move v4, v11

    .line 716
    goto :goto_2

    :cond_7
    move v4, v11

    .line 715
    goto :goto_2

    .line 721
    .restart local v8    # "column$iterator":Ljava/util/Iterator;
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mTempColumn:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;

    invoke-direct {p0, v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->updateVolumeColumnH(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)V

    .line 688
    return-void
.end method

.method private recheckH(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)V
    .locals 5
    .param p1, "column"    # Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;

    .prologue
    .line 858
    if-nez p1, :cond_1

    .line 859
    sget-boolean v2, Lcom/android/systemui/miui/volume/Util;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "recheckH ALL"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->trimObsoleteH()V

    .line 861
    iget-object v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mColumns:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "r$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;

    .line 862
    .local v0, "r":Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;
    invoke-direct {p0, v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->updateVolumeColumnH(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)V

    goto :goto_0

    .line 865
    .end local v0    # "r":Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;
    .end local v1    # "r$iterator":Ljava/util/Iterator;
    :cond_1
    sget-boolean v2, Lcom/android/systemui/miui/volume/Util;->DEBUG:Z

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "recheckH "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get14(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->updateVolumeColumnH(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)V

    .line 857
    :cond_3
    return-void
.end method

.method private recordCountIfNeed(I)V
    .locals 6
    .param p1, "type"    # I

    .prologue
    .line 1024
    iget v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mLockRecordTypes:I

    and-int/2addr v2, p1

    if-nez v2, :cond_0

    .line 1025
    iget v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mLockRecordTypes:I

    or-int/2addr v2, p1

    iput v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mLockRecordTypes:I

    .line 1026
    iget-object v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mHandler:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$H;

    const/16 v3, 0x9

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 1027
    .local v1, "msg":Landroid/os/Message;
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 1028
    iget-object v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mHandler:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$H;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v1, v4, v5}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1029
    const/4 v0, 0x0

    .line 1030
    .local v0, "key":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 1049
    .end local v0    # "key":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_0

    .line 1050
    const-string/jumbo v2, "systemui_volume_dialog"

    invoke-static {v2, v0}, Lcom/android/systemui/miui/analytics/AnalyticsWrapper;->recordCountEventAnonymous(Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    return-void

    .line 1032
    .restart local v0    # "key":Ljava/lang/String;
    .restart local v1    # "msg":Landroid/os/Message;
    :sswitch_0
    const-string/jumbo v0, "volume_adjust_by_key"

    .local v0, "key":Ljava/lang/String;
    goto :goto_0

    .line 1035
    .local v0, "key":Ljava/lang/String;
    :sswitch_1
    iget-boolean v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mExpanded:Z

    if-eqz v2, :cond_1

    .line 1036
    const-string/jumbo v0, "volume_media_volume_adjust_by_slide"

    .local v0, "key":Ljava/lang/String;
    goto :goto_0

    .line 1037
    .local v0, "key":Ljava/lang/String;
    :cond_1
    const-string/jumbo v0, "volume_adjust_by_slide"

    .local v0, "key":Ljava/lang/String;
    goto :goto_0

    .line 1040
    .local v0, "key":Ljava/lang/String;
    :sswitch_2
    const-string/jumbo v0, "volume_ring_volume_adjust_by_slide"

    .local v0, "key":Ljava/lang/String;
    goto :goto_0

    .line 1043
    .local v0, "key":Ljava/lang/String;
    :sswitch_3
    const-string/jumbo v0, "volume_alarm_volume_adjust_by_slide"

    .local v0, "key":Ljava/lang/String;
    goto :goto_0

    .line 1046
    .local v0, "key":Ljava/lang/String;
    :sswitch_4
    const-string/jumbo v0, "volume_remote_volume_adjust_by_slide"

    .local v0, "key":Ljava/lang/String;
    goto :goto_0

    .line 1030
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
    .end sparse-switch
.end method

.method private recordVolumeChanged(IZ)V
    .locals 3
    .param p1, "stream"    # I
    .param p2, "fromKey"    # Z

    .prologue
    .line 995
    if-eqz p2, :cond_0

    .line 996
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->recordCountIfNeed(I)V

    .line 997
    return-void

    .line 999
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mColumns:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "vc$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;

    .line 1000
    .local v0, "vc":Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;
    invoke-static {v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get14(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)I

    move-result v2

    if-ne v2, p1, :cond_1

    invoke-static {v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get15(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1001
    iget-object v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mDynamic:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1002
    const/16 v2, 0x10

    invoke-direct {p0, v2}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->recordCountIfNeed(I)V

    .line 1003
    return-void

    .line 1005
    :cond_2
    packed-switch p1, :pswitch_data_0

    .line 1015
    return-void

    .line 1007
    :pswitch_0
    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->recordCountIfNeed(I)V

    .line 994
    .end local v0    # "vc":Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;
    :cond_3
    :goto_0
    return-void

    .line 1010
    .restart local v0    # "vc":Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;
    :pswitch_1
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->recordCountIfNeed(I)V

    goto :goto_0

    .line 1013
    :pswitch_2
    const/16 v2, 0x8

    invoke-direct {p0, v2}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->recordCountIfNeed(I)V

    goto :goto_0

    .line 1005
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setStreamImportantH(IZ)V
    .locals 3
    .param p1, "stream"    # I
    .param p2, "important"    # Z

    .prologue
    .line 871
    iget-object v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mColumns:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "column$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;

    .line 872
    .local v0, "column":Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;
    invoke-static {v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get14(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 873
    invoke-static {v0, p2}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-set9(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;Z)Z

    .line 874
    return-void

    .line 870
    .end local v0    # "column":Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;
    :cond_1
    return-void
.end method

.method private setupWindowAttributes()V
    .locals 7

    .prologue
    const/16 v6, 0x30

    const/4 v5, -0x1

    .line 328
    iget-object v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mWindow:Landroid/view/Window;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 329
    iget-object v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mWindow:Landroid/view/Window;

    const v3, 0xc0428

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 334
    iget-object v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mWindow:Landroid/view/Window;

    const/high16 v3, 0x800000

    invoke-virtual {v2, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 335
    iget-object v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mWindow:Landroid/view/Window;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 336
    iget-object v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mWindow:Landroid/view/Window;

    const/16 v3, 0x40

    invoke-virtual {v2, v3}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 337
    iget-object v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 338
    .local v1, "res":Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 339
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mWindowType:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 340
    const/4 v2, -0x3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 341
    const-class v2, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 342
    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 343
    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 344
    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 345
    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 346
    iget-object v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 347
    iget-object v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mWindow:Landroid/view/Window;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/Window;->setDimAmount(F)V

    .line 348
    iget-object v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v2, v6}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 327
    return-void
.end method

.method private shouldBeVisibleH(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;Z)Z
    .locals 3
    .param p1, "column"    # Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;
    .param p2, "isActive"    # Z

    .prologue
    const/4 v0, 0x0

    .line 614
    invoke-static {p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get14(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    .line 615
    iget-boolean v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mExpanded:Z

    if-nez v1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mShowA11yStream:Z

    :cond_0
    return v0

    .line 618
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mDynamic:Landroid/util/SparseBooleanArray;

    invoke-static {p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get14(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mExpanded:Z

    if-eqz v1, :cond_2

    .line 619
    return v0

    .line 622
    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mExpanded:Z

    if-eqz v1, :cond_5

    invoke-static {p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get17(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_5

    :cond_3
    const/4 p2, 0x1

    .end local p2    # "isActive":Z
    :cond_4
    :goto_0
    return p2

    .line 623
    .restart local p2    # "isActive":Z
    :cond_5
    iget-boolean v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mExpanded:Z

    if-eqz v1, :cond_6

    invoke-static {p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get8(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 622
    if-nez p2, :cond_3

    .line 624
    :cond_6
    iget-boolean v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mExpanded:Z

    if-eqz v1, :cond_4

    move p2, v0

    goto :goto_0
.end method

.method private shouldTempBeVisible()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 652
    iget-boolean v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mExpanded:Z

    if-eqz v0, :cond_0

    .line 653
    return v1

    .line 655
    :cond_0
    iget v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mActiveStream:I

    if-nez v0, :cond_1

    .line 656
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v0

    return v0

    .line 658
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mShowA11yStream:Z

    return v0
.end method

.method private showH(I)V
    .locals 6
    .param p1, "reason"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 514
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mKeyguard:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->needSkipVolumeDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 515
    return-void

    .line 517
    :cond_0
    sget-boolean v0, Lcom/android/systemui/miui/volume/Util;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showH r="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/volume/Events;->DISMISS_REASONS:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mHandler:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$H;

    invoke-virtual {v0, v3}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$H;->removeMessages(I)V

    .line 519
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mHandler:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$H;

    invoke-virtual {v0, v5}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$H;->removeMessages(I)V

    .line 520
    invoke-virtual {p0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->rescheduleTimeoutH()V

    .line 521
    iget-boolean v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mShowing:Z

    if-eqz v0, :cond_2

    return-void

    .line 522
    :cond_2
    iput-boolean v3, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mShowing:Z

    .line 523
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mContext:Landroid/content/Context;

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mKeyguard:Landroid/app/KeyguardManager;

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v4, v1}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 524
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {v0, v3}, Lcom/android/systemui/plugins/VolumeDialogController;->notifyVisible(Z)V

    .line 525
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mDialogView:Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;

    invoke-virtual {v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;->showH()V

    .line 513
    return-void
.end method

.method private showSafetyWarningH(I)V
    .locals 5
    .param p1, "flags"    # I

    .prologue
    const/4 v4, 0x0

    .line 880
    and-int/lit16 v0, p1, 0x401

    if-nez v0, :cond_0

    .line 881
    iget-boolean v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mShowing:Z

    .line 880
    if-eqz v0, :cond_2

    .line 882
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mSafetyWarningLock:Ljava/lang/Object;

    monitor-enter v1

    .line 883
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    monitor-exit v1

    .line 884
    return-void

    .line 886
    :cond_1
    :try_start_1
    new-instance v0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$8;

    iget-object v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {v3}, Lcom/android/systemui/plugins/VolumeDialogController;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v3

    invoke-direct {v0, p0, v2, v3}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$8;-><init>(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;Landroid/content/Context;Landroid/media/AudioManager;)V

    iput-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    .line 895
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/SafetyWarningDialog;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 897
    invoke-direct {p0, v4}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->recheckH(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)V

    .line 899
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->rescheduleTimeoutH()V

    .line 879
    return-void

    .line 882
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private trimObsoleteH()V
    .locals 4

    .prologue
    .line 677
    sget-boolean v2, Lcom/android/systemui/miui/volume/Util;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "trimObsoleteH"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mColumns:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 679
    iget-object v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mColumns:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;

    .line 680
    .local v0, "column":Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;
    invoke-static {v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get13(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get13(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->dynamic:Z

    if-eqz v2, :cond_1

    .line 681
    iget-object v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mDynamic:Landroid/util/SparseBooleanArray;

    invoke-static {v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get14(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 682
    iget-object v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mColumns:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 683
    iget-object v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mDialogColumns:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumns;

    invoke-static {v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get17(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumns;->removeView(Landroid/view/View;)V

    .line 678
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 676
    .end local v0    # "column":Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;
    :cond_2
    return-void
.end method

.method private unlockRecordType(I)V
    .locals 2
    .param p1, "unlockType"    # I

    .prologue
    .line 1056
    iget v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mLockRecordTypes:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mLockRecordTypes:I

    .line 1055
    return-void
.end method

.method private updateColumnH(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)V
    .locals 6
    .param p1, "activeColumn"    # Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;

    .prologue
    .line 628
    sget-boolean v4, Lcom/android/systemui/miui/volume/Util;->DEBUG:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "updateColumnH"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    :cond_0
    iget-boolean v4, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mShowing:Z

    if-nez v4, :cond_1

    .line 630
    invoke-direct {p0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->trimObsoleteH()V

    .line 632
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->updateTempColumn()V

    .line 634
    iget-object v4, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mColumns:Ljava/util/List;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "column$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;

    .line 635
    .local v0, "column":Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;
    if-ne v0, p1, :cond_2

    const/4 v2, 0x1

    .line 636
    .local v2, "isActive":Z
    :goto_1
    invoke-direct {p0, v0, v2}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->shouldBeVisibleH(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;Z)Z

    move-result v3

    .line 637
    .local v3, "shouldBeVisible":Z
    iget-boolean v4, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mExpanded:Z

    if-nez v4, :cond_3

    invoke-static {v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get8(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 639
    invoke-static {v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get17(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)Landroid/view/View;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/android/systemui/miui/volume/Util;->setVisOrInvis(Landroid/view/View;Z)V

    .line 643
    :goto_2
    invoke-static {v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get12(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)Landroid/widget/SeekBar;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->updateColumnsSizeH(Landroid/view/View;)V

    goto :goto_0

    .line 635
    .end local v2    # "isActive":Z
    .end local v3    # "shouldBeVisible":Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 641
    .restart local v2    # "isActive":Z
    .restart local v3    # "shouldBeVisible":Z
    :cond_3
    invoke-static {v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get17(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)Landroid/view/View;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/android/systemui/miui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    goto :goto_2

    .line 627
    .end local v0    # "column":Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;
    .end local v2    # "isActive":Z
    .end local v3    # "shouldBeVisible":Z
    :cond_4
    return-void
.end method

.method private updateColumnIconH(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)V
    .locals 3
    .param p1, "column"    # Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;

    .prologue
    .line 778
    invoke-static {p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get10(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)I

    move-result v1

    invoke-static {p1, v1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-set7(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;I)I

    .line 779
    invoke-static {p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get9(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)I

    move-result v1

    invoke-static {p1, v1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-set6(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;I)I

    .line 781
    invoke-static {p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get14(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)I

    move-result v1

    iget v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mActiveStream:I

    if-ne v1, v2, :cond_2

    .line 782
    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get14(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v0

    .line 785
    .local v0, "device":I
    invoke-static {p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get14(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 786
    sget v1, Lcom/android/systemui/miui/volume/R$drawable;->ic_miui_volume_speaker:I

    invoke-static {p1, v1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-set7(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;I)I

    .line 787
    sget v1, Lcom/android/systemui/miui/volume/R$drawable;->ic_miui_volume_speaker_mute:I

    invoke-static {p1, v1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-set6(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;I)I

    .line 791
    :cond_0
    and-int/lit8 v1, v0, 0x4

    if-nez v1, :cond_1

    .line 792
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_2

    .line 793
    :cond_1
    sget v1, Lcom/android/systemui/miui/volume/R$drawable;->ic_miui_volume_headset:I

    invoke-static {p1, v1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-set7(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;I)I

    .line 794
    sget v1, Lcom/android/systemui/miui/volume/R$drawable;->ic_miui_volume_headset_mute:I

    invoke-static {p1, v1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-set6(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;I)I

    .line 776
    .end local v0    # "device":I
    :cond_2
    return-void
.end method

.method private updateColumnsSizeH(Landroid/view/View;)V
    .locals 3
    .param p1, "slider"    # Landroid/view/View;

    .prologue
    .line 662
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 663
    .local v0, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-boolean v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mExpanded:Z

    if-eqz v1, :cond_0

    .line 664
    sget v1, Lcom/android/systemui/miui/volume/R$dimen;->miui_volume_column_width_expanded:I

    .line 663
    :goto_0
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 666
    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-boolean v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mExpanded:Z

    if-eqz v1, :cond_1

    .line 667
    sget v1, Lcom/android/systemui/miui/volume/R$dimen;->miui_volume_column_height_expanded:I

    .line 666
    :goto_1
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 669
    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-boolean v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mExpanded:Z

    if-eqz v1, :cond_3

    .line 670
    iget v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mActiveStream:I

    if-nez v1, :cond_2

    .line 671
    sget v1, Lcom/android/systemui/miui/volume/R$dimen;->miui_volume_column_margin_horizontal_expanded_voice:I

    .line 669
    :goto_2
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 661
    return-void

    .line 665
    :cond_0
    sget v1, Lcom/android/systemui/miui/volume/R$dimen;->miui_volume_column_width:I

    goto :goto_0

    .line 668
    :cond_1
    sget v1, Lcom/android/systemui/miui/volume/R$dimen;->miui_volume_column_height:I

    goto :goto_1

    .line 672
    :cond_2
    sget v1, Lcom/android/systemui/miui/volume/R$dimen;->miui_volume_column_margin_horizontal_expanded:I

    goto :goto_2

    .line 673
    :cond_3
    sget v1, Lcom/android/systemui/miui/volume/R$dimen;->miui_volume_column_margin_horizontal:I

    goto :goto_2
.end method

.method private updateDialogWindowH(Z)V
    .locals 3
    .param p1, "dismissing"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x2

    .line 603
    iget-boolean v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mExpanded:Z

    if-eqz v0, :cond_1

    .line 604
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 605
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 610
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mWindow:Landroid/view/Window;

    iget-boolean v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mExpanded:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_2

    :cond_0
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/Window;->setDimAmount(F)V

    .line 602
    return-void

    .line 607
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 608
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0

    .line 610
    :cond_2
    const v0, 0x3e4ccccd    # 0.2f

    goto :goto_1
.end method

.method private updateExpandedH(ZZ)V
    .locals 1
    .param p1, "expanded"    # Z
    .param p2, "dismissing"    # Z

    .prologue
    .line 585
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->updateExpandedH(ZZZ)V

    .line 584
    return-void
.end method

.method private updateExpandedH(ZZZ)V
    .locals 4
    .param p1, "expanded"    # Z
    .param p2, "dismissing"    # Z
    .param p3, "forceUpdate"    # Z

    .prologue
    .line 589
    iget-boolean v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mExpanded:Z

    if-ne v1, p1, :cond_0

    if-eqz p3, :cond_2

    .line 590
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mExpanded:Z

    .line 591
    sget-boolean v1, Lcom/android/systemui/miui/volume/Util;->DEBUG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateExpandedH "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mDialogView:Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;

    if-eqz p2, :cond_3

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, p1, v1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;->updateExpanded(ZZ)V

    .line 594
    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mDialogColumns:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumns;

    iget-boolean v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mExpanded:Z

    invoke-virtual {v1, v2}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumns;->updateExpandedH(Z)V

    .line 595
    invoke-direct {p0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->getActiveColumn()Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;

    move-result-object v0

    .line 596
    .local v0, "activeColumn":Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;
    invoke-direct {p0, v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->updateColumnH(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)V

    .line 597
    invoke-direct {p0, p2}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->updateDialogWindowH(Z)V

    .line 599
    invoke-virtual {p0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->rescheduleTimeoutH()V

    .line 588
    return-void

    .line 589
    .end local v0    # "activeColumn":Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;
    :cond_2
    return-void

    .line 593
    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private updateTempColumn()V
    .locals 2

    .prologue
    .line 648
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mTempColumnContainer:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->shouldTempBeVisible()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/miui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    .line 647
    return-void
.end method

.method private updateVolumeColumnH(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)V
    .locals 10
    .param p1, "column"    # Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;

    .prologue
    const/4 v5, 0x2

    const/4 v6, 0x0

    .line 725
    sget-boolean v7, Lcom/android/systemui/miui/volume/Util;->DEBUG:Z

    if-eqz v7, :cond_0

    sget-object v7, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updateVolumeColumnH s="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get14(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    :cond_0
    iget-object v7, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    if-nez v7, :cond_1

    return-void

    .line 727
    :cond_1
    iget-object v7, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget-object v7, v7, Lcom/android/systemui/plugins/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-static {p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get14(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    .line 728
    .local v2, "ss":Lcom/android/systemui/plugins/VolumeDialogController$StreamState;
    if-nez v2, :cond_2

    return-void

    .line 729
    :cond_2
    invoke-static {p1, v2}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-set15(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    .line 730
    iget v7, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    if-lez v7, :cond_3

    .line 731
    iget v7, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    invoke-static {p1, v7}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-set12(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;I)I

    .line 733
    :cond_3
    iget v7, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    invoke-static {p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get11(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)I

    move-result v8

    if-ne v7, v8, :cond_4

    .line 734
    const/4 v7, -0x1

    invoke-static {p1, v7}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-set13(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;I)I

    .line 736
    :cond_4
    iget-boolean v3, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->muted:Z

    .line 739
    .local v3, "streamMuted":Z
    invoke-static {p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get14(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)I

    move-result v7

    if-ne v7, v5, :cond_5

    iget-object v7, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mDialogView:Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;

    invoke-virtual {v7}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;->isOffMode()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 744
    .end local v3    # "streamMuted":Z
    :cond_5
    :goto_0
    iget v7, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMax:I

    mul-int/lit8 v1, v7, 0x64

    .line 745
    .local v1, "max":I
    invoke-static {p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get12(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)Landroid/widget/SeekBar;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/SeekBar;->getMax()I

    move-result v7

    if-eq v1, v7, :cond_6

    .line 746
    invoke-static {p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get12(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)Landroid/widget/SeekBar;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 750
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->updateColumnIconH(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)V

    .line 753
    iget-boolean v7, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mAutomute:Z

    if-eqz v7, :cond_9

    iget v7, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    if-nez v7, :cond_9

    invoke-static {p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get6(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)I

    move-result v0

    .line 755
    .local v0, "iconRes":I
    :goto_1
    invoke-static {p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get2(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)I

    move-result v7

    if-eq v0, v7, :cond_7

    .line 756
    invoke-static {p1, v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-set2(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;I)I

    .line 757
    invoke-static {p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get5(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)Landroid/widget/ImageView;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 760
    :cond_7
    invoke-static {p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get6(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)I

    move-result v7

    if-ne v0, v7, :cond_b

    .line 759
    :goto_2
    invoke-static {p1, v5}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-set8(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;I)I

    .line 769
    if-eqz v3, :cond_d

    .line 770
    iget-object v5, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get14(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v4

    .line 772
    .local v4, "vlevel":I
    :goto_3
    invoke-direct {p0, p1, v3, v4}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->updateVolumeColumnSliderH(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;ZI)V

    .line 724
    return-void

    .line 740
    .end local v0    # "iconRes":I
    .end local v1    # "max":I
    .end local v4    # "vlevel":I
    .restart local v3    # "streamMuted":Z
    :cond_8
    const/4 v3, 0x1

    .local v3, "streamMuted":Z
    goto :goto_0

    .line 754
    .end local v3    # "streamMuted":Z
    .restart local v1    # "max":I
    :cond_9
    if-eqz v3, :cond_a

    invoke-static {p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get6(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)I

    move-result v0

    .restart local v0    # "iconRes":I
    goto :goto_1

    .end local v0    # "iconRes":I
    :cond_a
    invoke-static {p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get7(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)I

    move-result v0

    .restart local v0    # "iconRes":I
    goto :goto_1

    .line 762
    :cond_b
    invoke-static {p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get7(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)I

    move-result v5

    if-ne v0, v5, :cond_c

    .line 763
    const/4 v5, 0x1

    goto :goto_2

    :cond_c
    move v5, v6

    .line 764
    goto :goto_2

    .line 771
    :cond_d
    invoke-static {p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get13(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v5

    iget v4, v5, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    goto :goto_3
.end method

.method private updateVolumeColumnSliderH(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;ZI)V
    .locals 12
    .param p1, "column"    # Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;
    .param p2, "streamMute"    # Z
    .param p3, "vlevel"    # I

    .prologue
    .line 801
    if-eqz p2, :cond_1

    iget-object v5, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mMutedColorList:Landroid/content/res/ColorStateList;

    .line 802
    :goto_0
    invoke-static {p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get4(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)Landroid/content/res/ColorStateList;

    move-result-object v6

    if-eq v6, v5, :cond_0

    .line 803
    invoke-static {p1, v5}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-set4(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    .line 804
    invoke-static {p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get12(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)Landroid/widget/SeekBar;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 807
    :cond_0
    invoke-static {p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get12(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)Landroid/widget/SeekBar;

    move-result-object v6

    invoke-static {p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get13(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 808
    invoke-static {p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get15(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 809
    return-void

    .line 801
    :cond_1
    const/4 v5, 0x0

    .local v5, "stateList":Landroid/content/res/ColorStateList;
    goto :goto_0

    .line 811
    .end local v5    # "stateList":Landroid/content/res/ColorStateList;
    :cond_2
    invoke-static {p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get12(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)Landroid/widget/SeekBar;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/SeekBar;->getProgress()I

    move-result v4

    .line 812
    .local v4, "progress":I
    invoke-static {p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get12(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)Landroid/widget/SeekBar;

    move-result-object v6

    invoke-static {v6, v4}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->getImpliedLevel(Landroid/widget/SeekBar;I)I

    move-result v2

    .line 813
    .local v2, "level":I
    invoke-static {p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get17(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_4

    const/4 v0, 0x1

    .line 814
    .local v0, "columnVisible":Z
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-static {p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get16(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    .line 815
    const-wide/16 v8, 0x3e8

    .line 814
    cmp-long v6, v6, v8

    if-gez v6, :cond_5

    const/4 v1, 0x1

    .line 816
    .local v1, "inGracePeriod":Z
    :goto_2
    iget-object v6, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mHandler:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$H;

    const/4 v7, 0x3

    invoke-virtual {v6, v7, p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$H;->removeMessages(ILjava/lang/Object;)V

    .line 817
    iget-boolean v6, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mShowing:Z

    if-eqz v6, :cond_6

    if-eqz v0, :cond_6

    if-eqz v1, :cond_6

    .line 818
    sget-boolean v6, Lcom/android/systemui/miui/volume/Util;->DEBUG:Z

    if-eqz v6, :cond_3

    sget-object v6, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "inGracePeriod"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    :cond_3
    iget-object v6, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mHandler:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$H;

    iget-object v7, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mHandler:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$H;

    const/4 v8, 0x3

    invoke-virtual {v7, v8, p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 820
    invoke-static {p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get16(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    add-long/2addr v8, v10

    .line 819
    invoke-virtual {v6, v7, v8, v9}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$H;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 821
    return-void

    .line 813
    .end local v0    # "columnVisible":Z
    .end local v1    # "inGracePeriod":Z
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "columnVisible":Z
    goto :goto_1

    .line 814
    :cond_5
    const/4 v1, 0x0

    .restart local v1    # "inGracePeriod":Z
    goto :goto_2

    .line 823
    :cond_6
    if-ne p3, v2, :cond_7

    .line 824
    iget-boolean v6, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mShowing:Z

    if-eqz v6, :cond_7

    if-eqz v0, :cond_7

    .line 825
    return-void

    .line 828
    :cond_7
    mul-int/lit8 v3, p3, 0x64

    .line 829
    .local v3, "newProgress":I
    if-eq v4, v3, :cond_9

    .line 830
    iget-boolean v6, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mShowing:Z

    if-eqz v6, :cond_b

    if-eqz v0, :cond_b

    .line 832
    invoke-static {p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get0(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    if-eqz v6, :cond_8

    invoke-static {p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get0(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 833
    invoke-static {p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get1(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)I

    move-result v6

    if-ne v6, v3, :cond_8

    .line 834
    return-void

    .line 837
    :cond_8
    invoke-static {p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get0(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    if-nez v6, :cond_a

    .line 838
    invoke-static {p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get12(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)Landroid/widget/SeekBar;

    move-result-object v6

    const-string/jumbo v7, "progress"

    const/4 v8, 0x2

    new-array v8, v8, [I

    const/4 v9, 0x0

    aput v4, v8, v9

    const/4 v9, 0x1

    aput v3, v8, v9

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-static {p1, v6}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-set0(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 839
    invoke-static {p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get0(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v6, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 844
    :goto_3
    invoke-static {p1, v3}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-set1(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;I)I

    .line 845
    invoke-static {p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get0(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v8, 0x50

    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 846
    invoke-static {p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get0(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->start()V

    .line 800
    :cond_9
    :goto_4
    return-void

    .line 841
    :cond_a
    invoke-static {p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get0(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 842
    invoke-static {p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get0(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [I

    const/4 v8, 0x0

    aput v4, v7, v8

    const/4 v8, 0x1

    aput v3, v7, v8

    invoke-virtual {v6, v7}, Landroid/animation/ObjectAnimator;->setIntValues([I)V

    goto :goto_3

    .line 849
    :cond_b
    invoke-static {p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get0(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    if-eqz v6, :cond_c

    .line 850
    invoke-static {p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get0(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 852
    :cond_c
    invoke-static {p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get12(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)Landroid/widget/SeekBar;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v6, v3, v7}, Landroid/widget/ProgressBarCompat;->setProgress(Landroid/widget/ProgressBar;IZ)V

    goto :goto_4
.end method

.method private vibrateH()V
    .locals 4

    .prologue
    .line 547
    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 548
    .local v0, "vibrator":Landroid/os/Vibrator;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 546
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mAccessibility:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$Accessibility;

    invoke-virtual {v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$Accessibility;->destory()V

    .line 233
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mControllerCallbackH:Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/VolumeDialogController;->removeCallback(Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;)V

    .line 234
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    .line 235
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mSilenceModeObserver:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$SilenceModeObserver;

    invoke-virtual {v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$SilenceModeObserver;->unregister()V

    .line 236
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mRingerModeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 231
    return-void
.end method

.method protected dismissH(I)V
    .locals 6
    .param p1, "reason"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 552
    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mDialogView:Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;

    invoke-virtual {v1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 553
    return-void

    .line 555
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mHandler:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$H;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$H;->removeMessages(I)V

    .line 556
    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mHandler:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$H;

    invoke-virtual {v1, v5}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$H;->removeMessages(I)V

    .line 557
    iget-boolean v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mShowing:Z

    if-nez v1, :cond_1

    return-void

    .line 558
    :cond_1
    iput-boolean v4, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mShowing:Z

    .line 559
    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 561
    const/16 v1, 0x20

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 562
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 563
    const-class v1, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$CustomDialog;

    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 564
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mContext:Landroid/content/Context;

    .line 565
    sget v3, Lcom/android/systemui/miui/volume/R$string;->volume_dialog_accessibility_dismissed_message:I

    .line 564
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 566
    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 568
    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mContext:Landroid/content/Context;

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v5, v2}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 569
    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {v1, v4}, Lcom/android/systemui/plugins/VolumeDialogController;->notifyVisible(Z)V

    .line 570
    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mDialogView:Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;

    new-instance v2, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$7;

    invoke-direct {v2, p0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$7;-><init>(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;->dismissH(Ljava/lang/Runnable;)V

    .line 576
    iget-object v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mSafetyWarningLock:Ljava/lang/Object;

    monitor-enter v2

    .line 577
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    if-eqz v1, :cond_4

    .line 578
    sget-boolean v1, Lcom/android/systemui/miui/volume/Util;->DEBUG:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "SafetyWarning dismissed"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    invoke-virtual {v1}, Lcom/android/systemui/volume/SafetyWarningDialog;->dismiss()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    monitor-exit v2

    .line 551
    return-void

    .line 576
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 1073
    const/4 v0, 0x0

    return v0
.end method

.method public init(ILcom/android/systemui/plugins/VolumeDialog$Callback;)V
    .locals 7
    .param p1, "windowType"    # I
    .param p2, "callback"    # Lcom/android/systemui/plugins/VolumeDialog$Callback;

    .prologue
    const/4 v4, 0x0

    .line 204
    iput p1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mWindowType:I

    .line 206
    invoke-direct {p0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->initDialog()V

    .line 208
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mAccessibility:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$Accessibility;

    invoke-virtual {v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$Accessibility;->init()V

    .line 210
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mControllerCallbackH:Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;

    iget-object v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mHandler:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$H;

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/plugins/VolumeDialogController;->addCallback(Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;Landroid/os/Handler;)V

    .line 211
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/VolumeDialogController;->getState()V

    .line 212
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "sysui_show_full_zen"

    const/4 v5, 0x0

    aput-object v2, v1, v5

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    .line 215
    .local v6, "currentConfig":Landroid/content/res/Configuration;
    iget v0, v6, Landroid/content/res/Configuration;->densityDpi:I

    iput v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mDensity:I

    .line 216
    iget v0, v6, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mOrientation:I

    .line 218
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/miui/volume/R$color;->miui_volume_disabled_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mMutedColorList:Landroid/content/res/ColorStateList;

    .line 219
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/miui/volume/R$color;->miui_volume_tint_dark:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mIconTintDark:Landroid/content/res/ColorStateList;

    .line 221
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mSilenceModeObserver:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$SilenceModeObserver;

    invoke-virtual {v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$SilenceModeObserver;->init()V

    .line 222
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mSilenceModeObserver:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$SilenceModeObserver;

    invoke-virtual {v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$SilenceModeObserver;->register()V

    .line 224
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 225
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mRingerModeChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 227
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    .line 226
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 203
    return-void
.end method

.method public onCreate(Landroid/content/Context;Landroid/content/Context;)V
    .locals 0
    .param p1, "sysuiContext"    # Landroid/content/Context;
    .param p2, "pluginContext"    # Landroid/content/Context;

    .prologue
    .line 1076
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 1079
    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;

    .prologue
    .line 352
    return-void
.end method

.method protected rescheduleTimeoutH()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 529
    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mHandler:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$H;

    invoke-virtual {v1, v5}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$H;->removeMessages(I)V

    .line 530
    invoke-direct {p0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->computeTimeoutH()I

    move-result v0

    .line 531
    .local v0, "timeout":I
    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mHandler:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$H;

    iget-object v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mHandler:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$H;

    .line 532
    const/4 v3, 0x3

    const/4 v4, 0x0

    .line 531
    invoke-virtual {v2, v5, v3, v4}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 532
    int-to-long v4, v0

    .line 531
    invoke-virtual {v1, v2, v4, v5}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 533
    sget-boolean v1, Lcom/android/systemui/miui/volume/Util;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "rescheduleTimeout "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {v1}, Lcom/android/systemui/plugins/VolumeDialogController;->userActivity()V

    .line 528
    return-void
.end method

.method public setAutomute(Z)V
    .locals 2
    .param p1, "automute"    # Z

    .prologue
    .line 360
    iget-boolean v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mAutomute:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 361
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mAutomute:Z

    .line 362
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mHandler:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$H;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$H;->sendEmptyMessage(I)Z

    .line 359
    return-void
.end method

.method public setSilentMode(Z)V
    .locals 2
    .param p1, "silentMode"    # Z

    .prologue
    .line 366
    iget-boolean v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mSilentMode:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 367
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mSilentMode:Z

    .line 368
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mHandler:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$H;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$H;->sendEmptyMessage(I)Z

    .line 365
    return-void
.end method

.method public setStreamImportant(IZ)V
    .locals 3
    .param p1, "stream"    # I
    .param p2, "important"    # Z

    .prologue
    .line 356
    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->mHandler:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$H;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/4 v2, 0x5

    invoke-virtual {v1, v2, p1, v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 355
    return-void

    .line 356
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
