## 2019-06-06 2.93.0.20190606.git245f34b

- xgl: Enable Scratch Bounds Checking for GFX9 to fix F1 2018 hang issue
- xgl: Update SDK headers to 1.1.109
- xgl: Update PAL Interface in Vulkan to 502
- xgl: VK_MEMORY_OVERALLOCATION_BEHAVIOR_ALLOWED_AMD: add support for the
       attachment image Vulkan memory type, which is very similar to the
       default local/invisible memory type
- pal: Make CPDMA query slot reset bypass L2 to avoid reading stale data
       at ComputeResults time
- pal: [GFX9] Trivial removal of unneeded DepthStencilState field
- pal: [GFX6-8] Port rework PA_SC_GENERIC/SCREEN_SCISSOR writes
- pal: Fix the override of SPI_CONFIG_CNTL
- pal: Disable pipeline upload to local invis mem for null devices
- pal: Update pipeline generation script to keep ifdefs in a consistent
       order
- pal: Implement HDR10 support
- pal: Add option to zero srd in unbound descriptor table
- pal: Transition to COPY_SOURCE does not decompress for copy to buffer
- pal: Fix hangs in layers surrounding acq-rel barriers
- pal: Fix acquire-release hanq on SE4
- pal: Optimizations for Acq-Rel
- pal: Implement blt optimizations for acquire-release barrier
- pal: [RPM] Minor tweak to ResolveImageGraphics path.
- pal: Add PipelineStageAllStages field in PipelineStageFlag enum
- pal: Remove reference to IL_REGTYPE_SHADER_RATE
- pal: Remove more redundant wait_reg_mem's in release-acquire
- pal: Fix generation of size_t for use with settingsTool and RDP
- pal: Deprecate ShaderCacheMode in PAL since it is no longer useful
- pal: Rename Linux OS Back-end to "Amdgpu"
- pal: Integrate latest Developer Driver Library
- llpc: Remove cwpack in LLPC,  use llvm::msgpack::Document to decode PAL
        metadata
- llpc: Add option lower-dyn-index back to fix build error
- llpc: Fix gfx9+ breakage from "Merge user data nodes"
- llpc: Fix divergent load bug and remove waterfalls

## 2019-05-29 2.91-0.20190524.git8d085a7

- xgl: Enable VK_EXT_host_query_reset extension
- xgl: Enable VK_EXT_separate_stencil_usage  extension
- xgl: Enable VK_KHR_uniform_buffer_standard_layout extension
- xgl: Fix VK.renderpass*.suballocation.multisample.
       separate_stencil_usage.*.testing_stencil failure
- xgl: Use internal pipeline hash for Vulkan pipeline reinjection
- xgl: Add enableSPP option to Vulkan Panel
- xgl: Fix VkExample DepthStencilResolve test failure
- xgl: Add Macro define for XCB_SURFACE and XLIB_SURFACE extension
- xgl: Change if-statement to for loop for processing pNext structure in
       GetImageFormatProperties2
- xgl: Add XGL_BUILD_LIT option for lit test build
- xgl: Update PAL Interface in Vulkan to 501
- xgl: Remove Vulkan 1.0 build
- xgl: Fix small surf size disable compression setting
- pal: Remove ETC2 support from GFXIP 8.1
- pal: Fix a bug where the last shader wouldn't get a "#endif" if its
       defines were different from the second-to-last shader's defines
- pal: Minor modification in generate settings code script to support
       Vulkan Settings Refactor
- pal: [RPM] More accurately detect FMask in CopyImageCompute
- pal: Support UAV exports
- pal: Enable cu soft group for VS by default in gfx9
- pal: Late alloc GS limit clamp
- pal: Makes the perf data buffer independent of the pipeline binary so
       that accessing the perf data is easier irrespective of the
       resident heap type of the pipeline binary
- pal: Only restore Predication state once during GenericColorBlit
- pal: Fix segfault in interfacelogger
- pal: IGpuEvent objects do not need multiple slots when acquire\release
       barriers are not active
- pal: [GFX9]Update CB_DCC_CONTROL programming
- pal: Make GfxCmdBufState a structure, not a union.
- pal: Combine CE RAM Dump with Increment CE Counter
- pal: Change cas.h/a.h include paths in rpmUtil to be rooted at src
- pal: Fix hang with split-mode barriers and layers enabled
- pal: Upload pipelines to local invis mem
- pal: TA_GRAD_ADJ needs to be updated based on queue priority
- pal: Report correct memory bandwidth for GDDR6 parts
- pal: [GFX9] Rework PA_SC_GENERIC/SCREEN_SCISSOR writes
- pal: [GFX9] Filter redundant target scissor writes in BindTargets
- pal: Bump version number to 218
- llpc: Fix DiRT Rally 2.0  hang in ultra settings
- llpc: Support merge ELF binary for per stage cache and enable
        per-stage-shader cache
- llpc: Add support for MsgPack PAL metadata
- llpc: Fix lit test errors that are hidden by typo "SHADERTEST :"
- llpc: Implement memset/memcpy for buffer fat pointers using loops
- llpc: If cmpxchg is strong, need to set the cmp bit

## 2019-05-11 2.85-0.20190511.git1dd300a

- xgl: Update PAL Interface in Vulkan to 489
- xgl: Update Vulkan header to 1.1.106
- xgl: Add entry vkCmdDrawIndirectCountKHR and
       vkCmdDrawIndexedIndirectCountKHR to sqtt layer to solve RGP crash issue
- xgl: Add support for subgroup cluster instruction
- xgl: Add setting to elevate priority of descriptor memory. Keep
       descriptors from getting paged if localHeap is oversubscribed
- xgl: Adds support for starting a  RGP trace based on a given frame
       index (so that detailed trace data is available for that frame)
- xgl: Implement extension VK_EXT_separate_stencil_usage,
       AMD_DEVICE_COHERENT_MEMORY and EXT_BUFFER_DEVICE_ADDRESS
- xgl: Make sure that MSAA depth/stencil images are treated as such by
       PAL
- xgl: Update the availability state for transform feedback query
- xgl: Change shader log file dumping directory/filename to:
       AMD_DEBUG_DIR+PipelineDumpDir+LogFileName<compileType>.txt
- xgl: Enable disk cache for Dawn of War3
- xgl: Performance tuning for game Thrones of Britannia
- xgl: Fix wrong usage of pImmutableSamplers
- pal: [GFX9]Trivial Draw function clean up
- pal: Update the availability state even if the query is not ready
- pal: Add option to use GpuHeapGartUswc for the pipeline uploader.
- pal: Set availability state for the result of streamout query
- pal: Changes to offline pipeline code gen script for more aggressive
       duplicate detection, minor bug fix
- pal: Indirect function support fixes
- pal: Remove "wholePipelineOptimizations" from the settings.
- pal: Fix PAL_ASSERT(pProps->gfx6.numMcdTiles <= MaxMcdTiles) is
       triggered with debug driver
- pal: Add option to force 64k padding for big page testing
- pal: Change activeCuMask to CUs on all HW
- pal: Add IL_OP_GET_ELEMENT_POINTER in ilp
- pal: Add support flag for out of order primitives and removed
       unnecessary variable
- pal: Add format overriding for scaled copy
- pal: Need precheck for bounded GPU memory's existence
- pal: Supply the image pointer associated with the mask-rams in the
       constructor so that the image and device objects don't have to get
       passed around everywhere
- pal: [AcqRelBarrier] GpuEventPool refactor to better meet PAL client
       needs
- pal: Adjust the amount of parameter cache we allow for a single binning
       batch
- pal: Remove unnecessary CpDma sync for Htile equation upload
- pal: Use "HasEntry" to load the compute user accumlator registers
       instead of "A
- pal: Bump version number to 215
- llpc: Update shaderdb tests
- llpc: Refine LLPC hash code
- llpc: Refine the lock time in pipeline dump
- llpc: Optimize pipeline compile time
- llpc: Optimize the buffer merge load/store functions for the tess shage
- llpc: Rework buffers to support fat pointers

## 2019-04-22 2.85-0.20190421.git1dd300a

- xgl: Fix MGPU: vkCmdNextSubpass and vkCmdEndRenderPass incorrectly use
       the currently set device mask
- xgl: Fix VK_KHR_device_group issue that "set" event status triggered by
       vkCmdSetEvents() executed by multi-GPU devices is not seen on host
       end
- pal: Update block instance counts (GL2A and GL2C)
- pal: Minor SPM logging enhancements
- pal: Correct copy_data alignment assert logic
- pal: Fix interface 478: relax compression in srds in the new interface
       from “enable only if we know the image is compressed” to “enable
       unless we write”
- pal: Add global Src/Dst cache masks to BarrierInfo
- pal: Tidy up ISettingsLoader's use of IndirectAllocator
- pal: Allow shared memory to be CPU visible
- pal: Reset query pool from CPU
- pal: Tweaks to PA_SC_SHADER_CONTROL draw-time code
- pal: Integrate latest addrlib
- pal: Update ELF Target Machine Numbers
- pal: Add a pal key to control the cmd buffer token size with 32 bit
       build when Gpu profiler mode is enabled
- pal: Fix GpaSession has intemittent zero-duration timestamps
- pal: Refactor wavefront size reporting and selection to make it easier
       to use wave intrinsics
- pal: Fix CPU mapping problem for memory shared cross device
- pal: Fix Thrones of Britannia tearing regression
- pal: Bump version number to 211
- llpc: Move shaderdb test from xgl to llpc repository
- llpc: Add support for dumping AMDIL binaries through the LLPC
        PipelineDumper with new interface version 25
- llpc: lit test fixes for llvm upgrade

## 2019-04-11 2.84-0.20190411.gitb21105a

- xgl: Fix Just Cause3 flicker issue: skip the store instruction when the
       index is out-of-bound if feature robustBufferAccess is used,
       relying on LLPC interface version 23
- xgl: Simplify the implementation of ShaderReplaceShaderISA
- xgl: PipelineCompiler refactoring
- xgl: Add support for AMDIL to VK_AMD_shader_info, relying on LLPC
       interface version 25
- xgl: Add shader optimizer JSON options for enableSelectiveInline and
       disableloopunrolls
- xgl: Implement VK_EXT_host_query_reset
- xgl: Update Vulkan headers to 1.1.105
- xgl: Update PAL Interface in Vulkan to 481
- xgl: Update LLPC Interface in Vulkan to 24
- pal: Update block instance counts (GL2A and GL2C)
- pal: Minor SPM logging enhancements
- pal: Correct copy_data alignment assert logic
- pal: Fix interface 478: relax compression in srds in the new interface
       from “enable only if we know the image is compressed” to “enable
       unless we write”
- pal: Add global Src/Dst cache masks to BarrierInfo
- pal: Tidy up ISettingsLoader's use of IndirectAllocator
- pal: Allow shared memory to be CPU visible
- pal: Reset query pool from CPU
- pal: Tweaks to PA_SC_SHADER_CONTROL draw-time code
- llpc: Move shaderdb test from xgl to llpc repository
- llpc: Add support for dumping AMDIL binaries through the LLPC
        PipelineDumper with new interface version 25

## 2019-03-29 2.82-0.20190329.git3160bb6

- xgl: Update shaderdb OpImageSample_TestSeparateSampler_lit.frag test
- xgl: Fix issue for capturing detailed tracing on a per PSO basis
- xgl: Enable priority regardless of whether VK_EXT_memory_priority is
       enabled or not for all external queues, relying on PAL interface
       version 479
- xgl: Disable TC compatible reads for MSAA depth-stencil target for
       Thrones of Britannia, relying on PAL interface version 481
- xgl: Add per shader optimizations to disable loop unroll  for
       Total:WarhammerII, relying on LLPC interface version 24
- xgl: Update PAL Interface in Vulkan to 475
- pal: Replace the existing "noMetadata" image-create flag with an enum
       that adds an option to disable TC compatibility
- pal: GpuEvent: fix bug related to heap type count
- pal: Fix null buffer views
- pal: Change the late alloc scheme to limit the amount of late alloc to
       a specific amount of space in the Position Buffer based on CU/SA
- pal: Remove L2 Cache flushes from indirect command generation for gfx9
- pal: Fix crash in GpaSession
- pal: Set GpaSession's default SQTT size to 128MB, clamped to whatever
       the max reported by PAL is
- pal: Maximize concurrency accessing Pipeline ELF cache
- pal: Clean up some additional L2 Flush and Invalidate related things in
       gfx9Barrier.cpp
- llpc: Factored out new base class ConfigBuilderBase
- llpc: Set PAL metadata pseudo-registers in ConfigBuilderBase
- llpc: Add support when image resource are selected from control flow

## 2019-03-26 2.81-0.20190326.git3160bb6

- xgl: Enable VK_EXT_memory_priority extension
- xgl: Enable VK_EXT_memory_budget extension
- xgl: Set dccBitsPerPixelThreshold to 16 for Vega20
- xgl: Update PAL Interface in Vulkan to 473
- xgl: PipelineCompiler refactor: separate Llpc part
- xgl: Convert VkPipelineLayout to support an arbitrary number of
       descriptor sets
- xgl: Add replace isa shader function in the pipeline
- xgl: Add offset number before shader output text
- xgl: Add per-shader stage wave size settings
- xgl: Use the correct heap index to determine if the heap is
       multi-instance
- xgl: Fix nullptr deref while walking over
       VkPhysicalDeviceSurfaceInfo2KHR chain
- pal: CmdUtil Enhancements, mostly changes to BuildWriteDat
- pal: Link gpu memory priority system to os on linux
- pal: Add the extended SPM segment size registers to the non-shadowed
       lists
- pal: [GFX9] Minor fix and opt for draw-time conservative rast register
- pal: [GFX9] Trivial removal of unneeded BlendState field
- pal: [GFX6-9] Trivial removal of unneeded code related to MSAA
       SamplePos
- pal: Modify release mem path to explicitly read and write through L2
- pal: Refactor of various code related to GPU page sizes > 4KiB
- pal: Change ApiInfo chunk version bump to be a minor version change
       instead of a major one
- pal: Return the default color gfx layout for multi-media surfaces
- pal: Fix wrong ICmdBuffer pointer passed through developer callbacks
       when GpuProfiler layer is enabled
- pal: PAL IPerfExperiment implementation refactoring
- pal: Fix a bug in ApiPsoHash support
- pal: Fix a dead loop in converting a FP16 denorm back to normalized
       FP32
- pal: Fix memory leak in GpaSession
- pal: [CmdBufferLogger] Fixes for the timestamp/waitIdle features
- pal: [AcqRelBarrier] Bug fixes and clean-ups
- pal: Retire PAL interfaces up to 443

## 2019-03-22 2.79-0.20190318.git735d204

- xgl: Add test result check in shaderdb test using lit
- xgl: Fix abnormal timestamp on transfer queue
- xgl: Do not stop instruction tracing at pipeline unbind since it may
       cut the trace short
- xgl: Enable PAL skip fast clear eliminate optimization by default
- xgl: Fix noisy assert by moving it after extensions are populated in
       late physical device init
- pal: Use the peerWritable flag when creating presentable images: this
       fixes a few assertions that fire when rendering using a swapchain
       with a device group (MGPU) in Vulkan
- pal: Remove palRuntimeHash and add ApiPsoHash to CmdBindPipeline
- pal: Reduce unnecessary L2 cache actions on GFX9
- pal: Gfx9 SPM changes
- pal: Fix ShaderDbg bugs
- pal: Update pipeline ABI metadata note ID to 32 (from 13) to match HSA
       code objects
- pal: Add compute queue support for pausing perf experiments and
       CmdUpdateSqttTokenMask
- pal: Improve CPU-Bound Performance in Mad Max: make the internal
       timestamp memory allocated using GpuScratch; makes internal GPU
       event objects able to use the BindGpuMemory to avoid the internal
       memory manager for the internal release/acquire event and instead
       uses GpuScratch
- pal: [GFX7/8] Default IndexBuffer fetchs to STREAM cache policy instead
       of LRU
- pal: Use the proper CP path for all non-user-mode config registers on
       gfx9
- pal: Change srd creation to handle (un)compressed writes
- pal: Minor profiling validation and memory leak fixes
- pal: Resolve hang sending dummy LOAD_CONST_RAM packet

## 2019-03-15 2.78-0.20190315.git735d204

- xgl: Implement and enable VK_KHR_vulkan_memory_model extension
- xgl: Implement and enable VK_EXT_depth_clip_enable extension
- xgl: Implement and enable VK_KHR_depth_stencil_resolve extension
- xgl: Enable VK_KHR_shader_float16_int8 extension by default
- xgl: Enable VK_EXT_debug_utils extension extension by default
- xgl: Enable VK_EXT_transform_feedback extension by default
- xgl: Implement VK_EXT_memory_budget extension (not finished)
- xgl: Don't count preserve attachments as first use
- xgl: PipelineCompiler refactor: separate CompilerSolution into isolated
       files
- xgl: Add support for  BindPipeline marker
- xgl: Start/Stop instruction trace based on ApiPsoHash
- xgl: Set apiPsoHash for binding of internal and NULL XGL pipelines to
       Pal::InternalApiPsoHash
- xgl: Move memory usage tracking from Device to PhysicalDevice.
- xgl: Set semaphore use in device group to be shareable
- pal: Add new Developer Callback BindPipeline for support to generate
       instrumentation describing the Pipeline bind event
- pal: Choose fixed function resolve pipeline based on resolve format
       instead of surface format
- pal: Fix dEQP-VK.spirv_assembly.instruction.graphics.float16.derivative_*
       - tests fail on gfx9
- pal: Minor fixes relevant to adding Developer Callback CmdBindPipeline
- pal: Support Vulkan driver implementation for VK_EXT_memory_budget
- pal: Indirect User-Data Clean-Up and Refactor, Part #3: mainly focused
       around PAL ABI changes for how the GPU virtual addresses for the
       vertex buffer and stream-out tables are mapped to user-SGPR's
- pal: Add ICmdBuffer::CmdSetVertexBuffers() to update the vertex buffer
       SRD table
- pal: Optimize the query pool slot reset operation in occlusion query's
       issue_begin which causes too many map/unmap of GPU memory
- pal: Add a "most" section to the generated register structs which helps
       prevent register definition fragmentation
- pal: Change IGpuEvent interface from IDestroyable to IGpuMemoryBindable
- pal: Convert a bunch of const CmdUtil methods to static
- pal: Supplement the judgment conditions of CB fixed function resolve
- pal: Add an optional path which can update the spill table, vertex
       buffer table and stream-out table using the CPU and embedded data
       instead of the existing CE RAM path
- pal: Edit the UseDcc setting to allow separate dcc control for
       resources that are used as a render target and a UAV and for
       resources that are only used as a UAV
- pal: Only execute DepthStencilCopy when resolve mode is average (i.e.
       sample_zero)
- pal: Fix shareable semaphore to stall queue
- llpc: Fix a bug in the LLPC ShaderCache Merge function which cause
        Dota2 stuttering and performance drop after recent game update
- llpc: Fall back to the internal shader cache for the case of
        VkPipelineCache miss
- llpc: Implement VK_KHR_shader_float_controls extension (not finished)
- llpc: Fix dynamic loop unroll crash
- llpc: Add LLVM library func tanf in emu lib to fix Rise of the Tomb
        Rider game crash with gcc 7 build
- llpc: Fix Witcher3-dxvk hang after loading screen

### 2019-03-04 2.77-0.20190301.gitc59b998

- xgl: Add result check pattern in shaderdb test for llvm-lit test
- pal: Upgrade addrlib
- pal: Add supports for min and max stencil resolve using compute
       pipeline.
- pal: Add support for VK_EXT_calibrated_timestamps
- pal: Fix memory leak in CmdBufferLogger
- pal: Fix vkmark corruption observed on Fiji + wayland
- pal: Fix perf counter max event id for CPG block
- llpc: Support .raw.buffer and .struct.buffer
- llpc: Resolve swizzling of LLPC API shader hash by removing call to
        MetroHash::Compact64()
- llpc: [TransformFeedback] Fix the register setting for
        RasterizationStreamSelect capablitity

### 2019-02-26 2.76-0.20190225.git27ef34e

- xgl: Implement VK_EXT_memory_priority support
- xgl: Add transfer queue workaround for Gfx6-8 to avoid PRT issues with
       SDMA
- xgl: Add barrier performance debug settings
- xgl: Implement an API PSO hash for Vulkan that is consistent from run
       to run and unique to the state of the PSO. This hash is registered
       with the dev driver profiling GpaSession to be written into .rgp
       files
- pal: Remove unnecessary assert in CmdDrawOpaque()
- pal: Add SupportsUnmappedPrtPageAccess flag to
       DeviceProperties::engineProperties::flags.
- pal: Fix corruption when enhanced sync enabled with Vsync on
- pal: Indirect User-Data Clean-Up and Refactor, Part #1: reduces the
       number of indirect user-data tables offered by PAL to one
- pal: Indirect User-Data Clean-Up and Refactor, Part #2: makes the
       internal changes in PAL necessary to start treating indirect
       user-data tables as what they really are used for by clients: the
       vertex buffer table
- pal: [RGP]Add functionality to enable instruction-level trace
       per-pipeline
- pal: Make sure that waitOnMetadataMipTail and
       depthStencilNeedsEopFlushTcc are both false in the CmdBindTargets
       function to avoid unnecessary cache flushes
- pal: Add multi-wave copy option for HS
- pal: Resolve Vulkan CTS OOM test case crashes, and a wide range of many
       other potential PAL_NEW alloc failure crashes
- pal: Delete queuesUseCaches flag
- pal: Update RGP API_INFORMATION chunk to reflect latest spec changes to
       include profile mode information
- pal: Update settings generation to calculate and populate the
       settingsDataHash field for each component
- pal: Add debug support to the CmdBufferLogger layer that allows for
       "single-stepping" of draws/dispatches
- pal: Don't reset GpuEvents on the CPU
- pal: Add settings to control the number of parameter cache lines for
       GE_PC_ALLOC and to control the number of cache lines for
       SPI_SHADER_LATE_ALLOC_VS
- pal: Improve AllocateGpuScratchMem function flexibility, prepare for
       changing IGpuEvent to IGpuMemoryBindable interface
- llpc: Fix the broken path of offchip GS
- llpc: Change TFE mechanism to use up-streamed support
- llpc: Change the builder interface to be more forward-looking & efficient
- llpc:  Move fmask and subpass data handling into lowering
- llpc: Remove ICmpInst from StoreValueToStreamOutBuffer
- llpc: Fix transformfeedback multi-stream cts on gfxip 8 and gfxip 9.
        Now transformfeedback cts erros are cleared
- llpc: New fix for CTS v1.1.2.2 hang in ./deqp-vk -n
        dEQP-VK.binding_model.descriptorset_random.sets32.noarray.ubolimitlow
- llpc: Add LLPC support for VK_KHR_shader_clock
- llpc: Moved auto-layout-desc code into amdllpc
- llpc: Introduce a new Builder::CreateWaterfallLoop method to create
        waterfall loop code for a buffer/image op with a non-uniform
	descriptor
- llpc: Separate descriptor load out of buffer op
- llpc: Add assert that lib func has the right type

### 2019-02-01 2.73-0.20190201.git20a62e8

- xgl: Update Vulkan Headers to 1.1.97
- xgl: Enable the extensions under development (VK_EXT_DEBUG_UTILS,
       VK_KHR_SHADER_FLOAT16_INT8,VK_ EXT_TRANSFORM_FEEDBACK) through the
       environment variable AMDVLK_ENABLE_DEVELOPING_EXT
- xgl: Implement VK_KHR_shader_float16_int8 extension
- xgl: Fix a memory priority issue: MemoryPriority shall select priority
       instead of offset as the high 16bit
- xgl: Refine the code to distinguish between
       VkGraphicsPipelineCreateInfo and
       GraphicsPipeline::CreateInfo/ComputePipeline::CreateInfo.
- xgl: Use the correct features pointer when VkPhysicalDeviceFeatures2 is
       used during device creation
- xgl: Implement SQTT support for the marker/label functionality of
       VK_EXT_debug_utils
- xgl: [shadertest] amdllpc lit test changes for per-shader lowering
- pal: Upgrade the VAM component
- pal: Add proper handling of allocation failures
- pal: Fix up some of the support for ECC GPR protection on Vega20
- pal: Fix GFX7: vkCmdDispatchIndirect() does not work correctly when
       submitted to a compute queue
- pal: Add support for GPU un-cached memory allocation
- pal: Add IL opcodes for some Dot ops
- pal: Fix regressions caused by CPU clock support in RGP
- llpc: Default to -enable-shadow-desc
- llpc: Remove address-space mutation passes
- llpc: Add proper handling of allocation failures
- llpc: Initial definition of Builder interface
- llpc: Increase max line to 65536. because we may have very long
        comments in .pipe file
- llpc: Fix the so-called "native" emu lib functions with allocas to use
        the right datalayout and put their allocas into the right address
        space
- llpc: Fix transformfeedback stride calculation in the output shader
        block
- llpc: Revert previous changes for lowering passes to per-shader
- llpc: Added timing of LLPC phases to -time-passes

# 2019-01-30 2.72-0.20190130.gitfbfa56c

- amdvlk: Add Vega20 and Raven2 support
- xgl: Implement VK_EXT_transform_feedback
- xgl: Move VK_EXT_swapchain_colorspace to instance extension
- xgl: Add int8 shaderdb tests
- pal: Report CPU clock speed to RGP
- pal: Properly reset events in EventPool and CmdReleaseThenAcquire
- pal: Fix bugs in Release/acquire-based barrier
- pal: Fix a typo in parsing /proc/cpuinfo output
- pal: Add a L2 flush and invalidate before copying leftover
       block-compressed pixels (Gfx9)
- pal: Add a flag in DeviceProperties to indicate whether the engine
       supports trackBusyChunks
- pal: Fix top pipelines identified by timeReport.py is mismatched with
       the dumped pipelines
- llpc: Implement VK_KHR_vulkan_memory_model
- llpc: Add arithmetic support for int8
- llpc: Use explicit waterfall intrinsics for subgroupshuffle
- llpc: Add xfblocation support for the Transformfeedback
- llpc: Fix assert in switch emu lib to an archive of bitcode modules
- llpc: gsPrimsPerSubgroup shouldn't be bigger than wave size

### 2019-01-27 2.71-0.20190125.git96f3ad7

- xgl: Enable EXT_INLINE_UNIFORM_BLOCK extension
- xgl: Enable EXT_PCI_BUS_INFO extension
- xgl: Add barrier filtering
- xgl: Implement extension VK_KHR_vulkan_memory_model in vulkan api layer
- xgl: Implement VK_EXT_display_surface_counter support
- xgl: Fix asserts related to valid vkCmdPushConstants usage
- pal: Fix wrong reported LDS size per threadgroup for GFX7+
- pal: Add new flag 'notLockable' into GpuMemoryCreateFlags to indicate
       the GpuMemory will be indirect lock
- pal: Upgrade gpuopen
- llpc: Remove unnecessary assert in amdllpc
- llpc: Fix CTS v1.1.2.2 failure in ./deqp-vk -n
        dEQP-VK.binding_model.descriptorset_random.sets32.noarray.ubolimitlow
- llpc: Enable inclusion of llvm-ir in section of ELF output
- llpc: Expand the shader inout meta node from 64 bit to 64 bit array

### 2019-01-15 2.70-0.20190115.git45222f8

- amdvlk: Update Vulkan Headers to 1.1.96
- amdvlk: Add pipeline optimizer key to pipeline dump file
- amdvlk: Optimization for fully overwritten resolve
- amdvlk: Add atomicOp support for the variable pointer
- amdvlk: Fix A performance regression with the Talos Principle
- amdvlk: Fix A potential access violation
- amdvlk: Fix A RGP regression
- amdvlk: Fix Multi-process failure
- xgl: Expose YUV planes, allow applications to implement their own color
       conversion accessing each YUV planes
- xgl: Do not include symbols while building release driver
- xgl: Code refactoring for pipeline dump
- xgl: Fix random VM fault caused by that the image descriptor and the
       fmask descriptor contain the same lower virtual address (as
       designed) but use different offsets in the suballocation
- xgl: Change the default WgpMode from wgp to cu
- xgl: Fix a null pointer access violation
- xgl: Implement VK_EXT_debug_utils
- xgl: Fix dxvk ELEX  corruption issue
- pal: Expose CuMask to gpaSession clients
- pal: Fix a  performance regression introduced by changes which added
       support for the LOAD_INDEX path for handling pipeline binds
- pal: Revise the alert of doing expand in late phase to print more info
- pal: Use mmTA_GRAD_ADJ_UCONFIG on GFX9 to prevent writing to a
       privileged register
- pal: Enable Int8 Arithmetic op in PAL ILP
- pal: Update ELF strtab section name offset when loading an ELF binary
- pal: Fix QuerySystemInfo() implementation for a number of issues
       affecting many-core CPUs like Threadripper and Epyc
- pal: Add a new declaration for the name prefix of ELF section dedicated
       to storing comments such as compiler intermediate representation
       (e.g. LLVM IR)
- llpc: Update naming scheme of LLVM IR inclusion:
- llpc: Add pipeline option includeIr for including IR in the ELF section
        in AMD_SHADER_INFO
- llpc: Fix  float test failure for transform_feedback

### 2019-01-07 2.68-0.20190107.git094be24

- xgl: Update Vulkan Headers to 1.1.96
- xgl: Add GPU memory references to SW compositing images
- xgl: Switch the default error code in PalToVkError from
       VK_ERROR_INTIALIZATION_FAILED to VK_ERROR_OUT_OF_HOST_MEMORY
- xgl: Fix a potential access violation if pPalMemory is nullptr
- xgl: Barrier cleanup
- xgl: Remove code for PAL_CLIENT_INTERFACE_MAJOR_VERSION <= 450
- xgl: Add new shaderdb test cases for transform feedback and variable
       pointer
- pal: Fix format X10Y10Z10W2Bias_Unorm is missed in Image::GetAddrFormat
- pal: Move the dccBitsPerPixelThreshold setting from a private Gfx9
       setting to a public Pal setting that can be set by clients.
       Refactor the code to use the public PAL setting when checking for
       the threshold to determine if DCC should be turned off
- pal: Avoid redundant pixel copy for BCn format
- pal: [RGP] Switch 64-bit pipeline compiler hashes to 128-bit internal
       pipeline hashes. Add PSO Correlation RGP chunk, update Code Object
       Database and Loader Event RGP chunks
- pal: Don't allow any meta-data texture fetches through that surface's
       hTile for the stencil if the hTile surface for a depth / stencil
       buffer doesn't contain any stencil data
- pal: Fix an RGP regression in the gpasession back-compat code
- pal: Pad shader size with shader instruction prefetch cache lines
- pal: Add new TossPoint for killing primitives in the PA during setup
- pal: Fix improper order of string for the enum EngineType
- pal: Fix the issue that pipelineAbiProcessor::LoadFromBuffer then
       PipelineAbiProcessor::SaveToBuffer ends up with different ELF size
- pal: Optimization for fully overwritten resolve
- pal: Make client specific debug string in public settings work
- pal: Fix Multi-process failure
- llpc: Rationalize LLPC's various ad-hoc pass managers into a single
        pass manager that runs on a single whole-pipeline LLVM IR module
- llpc: Move LLPC pass initialization so that a pass name can be used in
        an option such as -print-after, or the forthcoming
	-llpc-stop-after
- llpc: Add -dump-cfg-after=<passname> to dump CFG to a file per function
        after the specified pass
- llpc: Add additional flags to keep floating point optimization after
        limited opt pass
- llpc: Add pipeline optimizer key to pipeline dump file
- llpc: Use DEBUG_TYPE in all passes' INITIALIZE_PASS
- llpc: Use global Create function for all passes
- llpc: Include llvm-ir in ELF section
- llpc: Remove IR Value pointers from pipeline state
- llpc: Add 16-bit and 64-bit data to transform feedback.
- llpc: Correct the behavior of XFB enablement. In glslang, xfb_offset
        will trigger XFB rather than other XFB decorations.
- llpc: Remove glslCopyShaderEmu.ll. Add the function to
        llpcPatchCopyShader.cpp. Generate expected IR by C++.
- llpc: Fix dynamic loop unroll GetPipelineStatistics which was broken in
        PR#16
- llpc: Fix failure for clspv shader using atomic increment, add atomicOp
        support for the variable pointer
- llpc: Fix unused variable error on clang
- llpc: Fix asin float 16 CTS errors

### 2018-12-12 2.66-0.20181212.git6381155

- xgl: Update Vulkan headers to 1.1.94
- xgl: Use VK_DRIVER_ID_x in xgl for driver properties
- xgl: Enable primitiveUnderestimation capability of
       VK_EXT_conservative_rasterization
- pal: PCOM and Blt Shaders integration to mmpipelines in PAL
- pal: Remove call to WriteVsFirstSliceOffset() if the pipeline doesn't
       require it
- pal: Move the ownership of conservative rasterization register back to
       the MSAA state
- pal: Modify copybuffer byte and dword shaders to support a copy size of
       up to 4GB
- pal: Modify the RPM code to perform multiple smaller copies (of
       currently 16MB) in place of a single large copy and now it should
       be able to handle gpusize (64 bit) copy sizes
- pal: Fix Cube crash on debug version due to empty ShaderCacheFileDir
- pal: Fix GPU hang when Vulkan API accesses the stencil aspect of
       VK_Format_S8_Uint image explicitly
- pal: Fix mmVGT_GS_ONCHIP_CNTL access issue
- llpc: Merge tbuffer.store.i32 with tbuffer.store.v2i32 and
        tbuffer.store.v4i32, up to 5% performance gain for tessellation
- llpc: Enable the atomic optimizer
- llpc: Hook up Spirv Support for VK_KHR_shader_float_controls
- llpc: Fix compile error: non-scalar type cannot be used in a
        pseudo-destructor expression
- llpc: Rename PatchPrepareAbi to PatchPreparePipelineAbi
- llpc: Fix dxvk streamoutput11.exe on gfxip 8 and 9 cards for extension
        Ext-transformfeedback buffer
- llpc: Fix unused variable error in clang build
- llpc: Temp whole-pipeline passmgr fix for CTS 
        dEQP-VK.spirv_assembly.instruction.graphics.16bit_storage.struct_mixed_types.uniform_geom
        failure
- llpc: Remove conservative rasterization register from the pipeline ABI.
        This is now managed by PAL MSAA state

### 2018-12-05 2.65-0.20181205.gitbb80191

- xgl: Enable VK_EXT_scalar_block_layout extension
- xgl: Enable VK_KHR_swapchain_mutable_format extension
- xgl: Enable on-chip GSVS ring on GFX9, seeing up to 10% performance
       gain
- xgl: Update base address offset calculation to be per device
- xgl: Use SW compositor path for MGPU in windowed modes
- xgl: Add missing files to CMakelist to fix undefined reference to
       vk::OverrideDispatchTable_ND(vk::DispatchTable*)
- xgl: Fix errors with multiple monitors and direct display
- xgl: Add dccBitsPerPixelThreshold setting
- xgl: Fix the issue that Pipeline keeps a reference to layout after it
       is created
- xgl: Fix dEQP-VK.api.device_init.create_instance_device_intentional_alloc_fail
       test failure
- xgl: Fix a crash issue on Raven caused by the implementation of
       VK_AMD_memory_overallocation_behavior extension
- xgl: Fix calculation of the pRegions offset in
       CmdBuffer::PalCmdResolveImage()
- pal: Change the unit of buffer-filled-size to bytes
- pal: Add an option to print all pipelines in GPUprofiler
       timingReport.py
- pal: Add the ability for certain settings to be reread from the
       registry/file
- pal: Implement Release-acquire based barrier
- pal: Add timeline_semaphore support
- pal: Clarify when .sgpr_limit and .sgpr_limit are written to pipeline
       metadata
- pal: Add 64-bit version of BitMaskScanForward
- pal: Add BitMaskScanReverse to optimize Log2 and Pow2Pa
- pal: In BitMaskScanForward, replace bsf with tzcnt
- pal: Replace some PsUsesUavs() checks in OOO prim and DFSM
       optimizations with PsWritesUavs(). Add PsWritesUavs,
       PsWritesDepth, and PsUsesAppendConsume fields to legacy pipeline
       metadata
- pal: [ThreadTrace] Change assert to an alert when the perf token is
       enabled in the token mask config
- pal: Remove Bundle State Inheritance
- pal: Add HawaiiPro to AsicRevision and NullGpuId
- pal: Change PBB alpha to mask condition check to also require MSAA log2
       samples > 0
- pal: Re-enable tracing of missing registers in thread trace
- pal: Don't initialize counters when not in a mode for counter collection
- pal: Remove some useless settings
- pal: Simplify unnecessary BitMaskScanForward, replace another use of
       BitMaskScanForward with Reverse in gfx9MetaEq
- pal: Change note namespace from "AMD" to "AMDGPU" to match HSA code
       objects.
- pal: Fix compile and link error with clang
- pal: Fix CopyTextureRegion failure when copying a MSAA Resource in
       D32_FLOAT or D16_UNORM to a R32_UINT format
- pal: Fix  GFX9: CB_DCC_CONTROL register is programmed incorrectly
- pal: Fix perf counter instance incorrect calculation
- llpc: Add implementation for VK_KHR_shader_float16_int extension
- llpc: Add implementation for transform feedback extension
- llpc: Rationalize LLPC's various ad-hoc pass managers into a single
        pass manager that runs on a single whole-pipeline LLVM IR module
- llpc: Ensure declaration attributes copied from external lib
- llpc: Ensure llvm.amdgcn.set.inactive is not marked readnone
- llpc: Remove unnecessary and illegal alloca in emulation functions
- llpc: Clear sets of unused values after use
- llpc: Remove +vgpr-spilling from default options as this is now always
        enabled in LLVM upstream
- llpc: Ensure llvm.amdgcn.set.inactive is not moved in control flow
- llpc: Avoid remembering view index value outside of IR
- llpc: Fix incorrect implementation of OpSubgroupAllEqual
- llpc: Fix clang unused variable error
- llpc: Fix  dEQP-VK.glsl.atomic_operations.*_*signed64bit_* failure on
        gfx7
- llpc: Fix some dodgy deleting of instructions in SpirvLowerAccessChain
- llpc: Fix ELEX crash with Steam Proton

### 2018-11-20 2.63.1120.g81fd878-1

- xgl: Enable sparse support by default
- xgl: Enable VK_AMD_memory_overallocation_behavior extension
- xgl: Enable degenerate triangles for conservative rasterizations
- xgl: Fix issue that can't clear a mutable format image
- xgl: Fix CTS memory.pipeline_barrier.transfer_dst_storage_image tests
       fail
- xgl: Fix MGPU asserts when creating graphics pipeline
- xgl: Fix issue that wrong target device ID passed to PAL
- xgl: Fix issue that dual source bend is being enabled when blending is
       disabled
- xgl: Add setting for exiting after compilation failure
- xgl: Update base address offset calculation to be per device
- pal: Hook up more pipeline ABI metadata fields
- pal: Shader prefetch updates, remove the PrefetchMgr entirely
- pal: Change a SparseVector assert to be more clear
- pal: Add a pair of more generic BuildReleaseMem and BuildAcquireMem
       functions
- pal: Fix a couple inconsistencies in platform settings
- pal: Fix copies of BCn mip-levels where the HW determines the incorrect
       size of the mip level
- pal: Check if pMsaaState is null to avoid possible access violate
- pal: Add parameters firstInstance and instanceCount to CmdDrawOpaque to
       support Vulkan API DrawIndirectByteCount
- pal: Fix GetPeerImageSizes relying on zero initialization of parameters
- pal: Fix a regression
       dEQP-VK.wsi.wayland.swapchain.create.min_image_count test crashes
- pal: Fix dependency on x11/xcb libraries even there is no x11/xcb
       surface created
- pal: Add setting CsCuEnLimitMask for limiting CUs enabled for compute
       shaders
- pal: Add the ability to dump debug stack traces
- pal: Update swap chain to handle VSync fullscreen present
- pal: Add ICmdBuffer::CmdSetBufferFilledSize
- llpc: Fix clang unused function warnings
- llpc: Fix clang unused-variable warnings
- llpc: Fix default output file extension for ISA asm output
- llpc: Build emu lib with opt -strip
- llpc: Set default -log-file-dbgs to "" (meaning stderr): this brings
        amdllpc into line with other LLVM tools.
- llpc: Implement transform_feedback support
- llpc: Fix a typo to calculate ldsSizeDwordGranularity for on-chip ESGS
        ring on GFX9
- llpc: Correct minor issues for inline constant
- llpc: Add proper type mangling to llpc builtin and generic functions

### 2018-09-08: amdvlk-2.51.0830.g3775c7f-1

- xlg: Update to VulkanSDK 1.1.82
- xlg: VK_KHR_create_renderpass2 and VK_KHR_8bit_storage are now in
       public headers, remove the header files under devext.
- xlg: Added support for VK_EXT_conservative_rasterization, only
       "Primitive overestimation" feature is supported.
- xlg: Fix dereference of
       pDeviceGroupRenderPassBeginInfo->pDeviceRenderAreas when
       pDeviceGroupRenderPassBeginInfo->deviceRenderAreaCount == 0
- xlg: VK_EXT_descriptor_indexing: support non-uniform flag in image and
       atomic operations.
- pal: Fix F1 2017 Corruption observed while running benchmark
- pal: Fix assertion in RsrcProcMgr::CopyImageCompute()
- pal: [DbgOverlay] Fixes invalid gpu time in Debug overlay.
- llpc: Fixed uniform_buffer_dynamic_array_non_uniform_access_* test
        failures issues on GFX6.
- llpc: Moved translator files to match upstream Khronos
        spirv-llvm-reader
